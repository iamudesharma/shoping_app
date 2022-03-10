// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../pages/account_page.dart' as _i8;
import '../pages/cart_page.dart' as _i7;
import '../pages/home_page.dart' as _i1;
import '../pages/login_page.dart' as _i2;
import '../pages/no_internet_page.dart' as _i4;
import '../pages/product_page.dart' as _i5;
import '../pages/search_page.dart' as _i6;
import '../pages/user_setup.dart' as _i3;
import 'routes.dart' as _i11;

class AppRoutes extends _i9.RootStackRouter {
  AppRoutes(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    UserSetUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.UserSetUpPage());
    },
    NoInternetRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NoInternetPage());
    },
    ProductRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProductPage());
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SearchPage());
    },
    CartRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CartPage());
    },
    AccountRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.AccountPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomeRoute.name, path: '/', guards: [
          authGuard
        ], children: [
          _i9.RouteConfig(ProductRoute.name,
              path: 'product', parent: HomeRoute.name),
          _i9.RouteConfig(SearchRoute.name,
              path: 'search', parent: HomeRoute.name),
          _i9.RouteConfig(CartRoute.name, path: 'cart', parent: HomeRoute.name),
          _i9.RouteConfig(AccountRoute.name,
              path: 'account', parent: HomeRoute.name)
        ]),
        _i9.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i9.RouteConfig(UserSetUpRoute.name, path: '/user-set-up-page'),
        _i9.RouteConfig(NoInternetRoute.name, path: '/no-internet-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.UserSetUpPage]
class UserSetUpRoute extends _i9.PageRouteInfo<void> {
  const UserSetUpRoute()
      : super(UserSetUpRoute.name, path: '/user-set-up-page');

  static const String name = 'UserSetUpRoute';
}

/// generated route for
/// [_i4.NoInternetPage]
class NoInternetRoute extends _i9.PageRouteInfo<void> {
  const NoInternetRoute()
      : super(NoInternetRoute.name, path: '/no-internet-page');

  static const String name = 'NoInternetRoute';
}

/// generated route for
/// [_i5.ProductPage]
class ProductRoute extends _i9.PageRouteInfo<void> {
  const ProductRoute() : super(ProductRoute.name, path: 'product');

  static const String name = 'ProductRoute';
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i7.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i8.AccountPage]
class AccountRoute extends _i9.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: 'account');

  static const String name = 'AccountRoute';
}
