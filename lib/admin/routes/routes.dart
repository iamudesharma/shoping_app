import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/admin/page/add_product_page.dart';
import 'package:shoping_app/admin/page/login.dart';
import 'package:shoping_app/admin/page/notifitions_page.dart';
import 'package:shoping_app/admin/page/order_page.dart';
import 'package:shoping_app/admin/page/users_page.dart';

import 'package:shoping_app/main.dart';
import 'package:velocity_x/velocity_x.dart';


import '../page/home_page.dart';
import '../page/product_page.dart';

class AdminRoutes {
  static const HOME = '/';
  static const LOGIN = '/login';
  static const AddProductPage = '/add-Product';
  static const UpdateProductPage = '/update-Product';
  static const ProductPage = '/Product';
  static const UserPage = '/users';
  static const OrderPage = '/orders';
  static const Notifications = '/notifications';
 }

final vxNavigator = VxNavigator(
  routes: {
   '/': (uri, param) => MaterialPage(child: HomePage()),
    AdminRoutes.LOGIN: (uri, param) => const MaterialPage(child: LoginPage()),
    AdminRoutes.AddProductPage: (uri, param) => const MaterialPage(
          child: AddProductPage(),
        ),
    '/notifications': (uri, param) => const MaterialPage(
          child: NotificationsPage(),
        ),
    AdminRoutes.OrderPage: (uri, param) => const MaterialPage(
          child: OrdersPage(),
        ),
    AdminRoutes.UserPage: (uri, param) => const MaterialPage(
          child: UsersPage(),
        ),
    AdminRoutes.ProductPage: (uri, param) => MaterialPage(
          child: ProductPage(),
        ),
  },
  observers: [
    MyObs(),
  ],

);

class MyObs extends VxObserver {
  @override
  void didChangeRoute(Uri route, Page page, String pushOrPop) {
    print("${route.path} - $pushOrPop");
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    print('Pushed a route');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('Popped a route');
  }
}

