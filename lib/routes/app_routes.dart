import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/pages/account_page.dart';
import 'package:shoping_app/pages/addresses/addresses.dart';
import 'package:shoping_app/pages/cart_page.dart';
import 'package:shoping_app/pages/home_page.dart';
import 'package:shoping_app/pages/login_page.dart';
import 'package:shoping_app/pages/no_internet_page.dart';
import 'package:shoping_app/pages/products/product_page.dart';
import 'package:shoping_app/pages/search_page.dart';
import 'package:shoping_app/pages/user_setup.dart';
import 'package:shoping_app/routes/routes.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      guards: [AuthGuard, UserSetupGuard],
      children: [
        AutoRoute(path: 'product', page: ProductPage),
        
        AutoRoute(path: 'cart', page: CartPage),
        AutoRoute(path: 'account', page: AccountPage),
      ],
    ),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: UserSetUpPage,
    ),
    AutoRoute(
      page: NoInternetPage,
    ),
    AutoRoute(
      page: AddressPage,
    )
  ],
)
class $AppRoutes {}
