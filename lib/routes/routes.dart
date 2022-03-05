// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:shoping_app/controller/auth_controller.dart';
import 'package:shoping_app/pages/home_page.dart';
import 'package:shoping_app/pages/login_page.dart';
import 'package:shoping_app/pages/user_setup.dart';

import '../controller/user_setup_controller.dart';

abstract class Routes {
  // static const INITIAL = '/';

  static const HOME = '/';
  static const LOGIN = '/login';
  static const USERSETUP = '/usersetup';
}

class AppRoutes {
  static final route = GoRouter(
    observers: [
      MyNavObserver(),
    ],
    routes: [
      GoRoute(
          path: Routes.HOME,
          builder: (context, state) => const HomePage(),
          redirect: (state) {
            if (Get.find<UserSetController>().userDataExist.value) {
              return Routes.HOME;
            } else {
              return Routes.USERSETUP;
            }
          }),
      GoRoute(
        path: Routes.USERSETUP,
        builder: (context, state) => const UserSetUpPage(),
      ),
      GoRoute(
        path: Routes.LOGIN,
        builder: (context, state) => const LoginPage(),
        redirect: (state) {
          final _controller = Get.find<AuthController>();

          if (_controller.firebaseAuth.currentUser != null) {
            return Routes.HOME;
          } else {
            return Routes.LOGIN;
          }
        },
      ),
    ],
  );
}

class MyNavObserver extends NavigatorObserver {
  MyNavObserver() {
    log.onRecord.listen((e) => debugPrint('$e'));
  }

  final log = Logger('MyNavObserver');

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log.info('didPush: ${route.str}, previousRoute= ${previousRoute?.str}');

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log.info('didPop: ${route.str}, previousRoute= ${previousRoute?.str}');

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      log.info('didRemove: ${route.str}, previousRoute= ${previousRoute?.str}');

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) =>
      log.info('didReplace: new= ${newRoute?.str}, old= ${oldRoute?.str}');

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) =>
      log.info('didStartUserGesture: ${route.str}, '
          'previousRoute= ${previousRoute?.str}');

  @override
  void didStopUserGesture() => log.info('didStopUserGesture');
}

extension on Route<dynamic> {
  String get str => 'route(${settings.name}: ${settings.arguments})';
}
