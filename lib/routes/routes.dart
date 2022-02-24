import 'package:get/get.dart';
import 'package:shoping_app/bindings/login_bindings.dart';
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
      page: () => LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
