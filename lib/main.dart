import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/auth_controller.dart';
import 'package:shoping_app/controller/location_controller.dart';
import 'package:shoping_app/controller/user_setup_controller.dart';
import 'package:shoping_app/routes/routes.dart';

import 'controller/shared_preferences_controller.dart';
import 'routes/app_routes.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF125994),
  ));

  Get.put(SharedPerfController());
  await Firebase.initializeApp();
  Get.put(() => LocationController());
  Get.put(UserController());

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
  final _routers =
      AppRoutes(authGuard: AuthGuard(), userSetupGuard: UserSetupGuard());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      routerDelegate: AutoRouterDelegate(
        _routers,
        navigatorObservers: () => [
          MyObserver(),
        ],
      ),
      routeInformationParser: _routers.defaultRouteParser(),
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('New route pushed: ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print('Tab route re-visited: ${route.name}');
  }
}
