import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shoping_app/bindings/auth_bindings.dart';
import 'package:shoping_app/controller/auth_controller.dart';
import 'package:shoping_app/pages/loading_page.dart';
import 'package:shoping_app/pages/login_page.dart';
import 'package:shoping_app/widgets/logger.dart';

import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  Get.put(LoggerController(
      logger: Logger(
    printer: PrettyPrinter(
        methodCount: 2, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  )));

  Get.put(AuthController(
    firebaseAuth: FirebaseAuth.instance,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = Get.find<AuthController>();
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      // ignore: unnecessary_null_comparison
      () => controller.firebaseAuth.currentUser == null
          ? Get.offAllNamed(Routes.LOGIN)
          : Get.offAllNamed(Routes.HOME),
    );
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.pages,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        typography: Typography.material2018(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoadingPage(),
    );
  }
}
