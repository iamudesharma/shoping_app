import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shoping_app/admin/admin_app.dart';
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

  kIsWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyBsgrP6RSX6Kh2YtyptR5DqWfR_W0G98HI",
              authDomain: "shopingapp-3a842.firebaseapp.com",
              projectId: "shopingapp-3a842",
              storageBucket: "shopingapp-3a842.appspot.com",
              messagingSenderId: "797494043235",
              appId: "1:797494043235:web:2802154c2725a426d34e56",
              measurementId: "G-16M48V4P9E"))
      : "";
  Get.put(SharedPerfController());
  !kIsWeb ? await Firebase.initializeApp() : "";
  Get.put(() => LocationController());
  Get.put(UserController());

  Get.put(AuthController(
    firebaseAuth: FirebaseAuth.instance,
  ));

  runApp(kIsWeb ? MyAdminApp() : MyApp());
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
