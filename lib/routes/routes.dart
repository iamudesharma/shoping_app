// // import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
// import 'package:logging/logging.dart';
// import 'package:shoping_app/controller/auth_controller.dart';
// import 'package:shoping_app/pages/home_page.dart';
// import 'package:shoping_app/pages/login_page.dart';
// import 'package:shoping_app/pages/user_setup.dart';

// import '../controller/user_setup_controller.dart';

// abstract class Routes {
//   // static const INITIAL = '/';

//   static const HOME = '/';
//   static const LOGIN = '/login';
//   static const USERSETUP = '/usersetup';
// }

// class AppRoutes {
//   static final route = GoRouter(
//     initialLocation:Routes.HOME ,
//     observers: [
//       MyNavObserver(),
//     ],
//     routes: [

//       GoRoute(
//         path: Routes.HOME,
//         builder: (context, state) => const HomePage(),
//       ),
//       GoRoute(
//         path: Routes.USERSETUP,
//         builder: (context, state) => const UserSetUpPage(),
//       ),
//       GoRoute(
//         path: Routes.LOGIN,
//         builder: (context, state) => const LoginPage(),
//         redirect: (state) {
//           final _controller = Get.find<AuthController>();

//           if (_controller.firebaseAuth.currentUser != null) {
//             return Routes.USERSETUP;
//           } else {
//             return Routes.LOGIN;
//           }
//         },
//       ),
//     ],
//   );
// }

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shoping_app/controller/auth_controller.dart';
import 'package:shoping_app/routes/app_routes.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    if (await Get.find<AuthController>().firebaseAuth.currentUser != null) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.navigate(LoginRoute());
    }
  }
}

class UserSetupGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    AuthController _controller = AuthController(
      firebaseAuth: FirebaseAuth.instance,
    );

    _controller.firestore
        .collection('users')
        .doc(_controller.firebaseAuth.currentUser!.uid)
        .get()
        .then((value) {
      if (value.exists) {
        resolver.next(true);
      } else {
        router.navigate(UserSetUpRoute());
      }
    });
  }
}
