import 'package:get/get.dart';
import 'package:shoping_app/bindings/auth_bindings.dart';
import 'package:shoping_app/pages/home_page.dart';
import 'package:shoping_app/pages/login_page.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const HOME = '/home';
  static const LOGIN = '/login';
}

class AppRoutes {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      bindings: [
        AuthBinding(),
      ],
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
    )
  ];
}
