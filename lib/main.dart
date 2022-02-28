import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:shoping_app/controller/auth_controller.dart';
import 'package:shoping_app/pages/home_page.dart';
import 'package:shoping_app/pages/loading_page.dart';
import 'package:shoping_app/pages/login_page.dart';
import 'package:shoping_app/pages/no_internet_page.dart';
import 'package:shoping_app/widgets/logger.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF125994),
  ));
  await Firebase.initializeApp();

  Get.put(LoggerController(
      logger: Logger(
    printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: false),
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
  void initState() {}

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      // onGenerateRoute: () => AppRoutes.routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,

        // ignore: deprecated_member_use

        typography: Typography.material2018(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if (snapshot.data == ConnectivityResult.none) {
              return const NoInternetPage();
            }
            return FutureBuilder<User?>(
              future: FirebaseAuth.instance.authStateChanges().first,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingPage();
                }
                if (snapshot.data == null) {
                  return const LoginPage();
                }
                return const HomePage();
              },
            );
          }),
    );
  }
}
