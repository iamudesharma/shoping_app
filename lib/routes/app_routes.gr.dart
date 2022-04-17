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
import '../pages/addresses/addresses.dart' as _i5;
import '../pages/cart_page.dart' as _i7;
import '../pages/home_page.dart' as _i1;
import '../pages/login_page.dart' as _i2;
import '../pages/no_internet_page.dart' as _i4;
import '../pages/products/product_page.dart' as _i6;
import '../pages/user_setup.dart' as _i3;
import 'routes.dart' as _i11;

class AppRoutes extends _i9.RootStackRouter {
  AppRoutes(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.userSetupGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  final _i11.UserSetupGuard userSetupGuard;

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
    AddressRoute.name: (routeData) {
      final args = routeData.argsAs<AddressRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.AddressPage(key: args.key, controller: args.controller));
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>(
          orElse: () => const ProductRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ProductPage(key: args.key));
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
          authGuard,
          userSetupGuard
        ], children: [
          _i9.RouteConfig(ProductRoute.name,
              path: 'product', parent: HomeRoute.name),
          _i9.RouteConfig(CartRoute.name, path: 'cart', parent: HomeRoute.name),
          _i9.RouteConfig(AccountRoute.name,
              path: 'account', parent: HomeRoute.name)
        ]),
        _i9.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i9.RouteConfig(UserSetUpRoute.name, path: '/user-set-up-page'),
        _i9.RouteConfig(NoInternetRoute.name, path: '/no-internet-page'),
        _i9.RouteConfig(AddressRoute.name, path: '/address-page')
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
/// [_i5.AddressPage]
class AddressRoute extends _i9.PageRouteInfo<AddressRouteArgs> {
  AddressRoute({_i10.Key? key, required dynamic controller})
      : super(AddressRoute.name,
            path: '/address-page',
            args: AddressRouteArgs(key: key, controller: controller));

  static const String name = 'AddressRoute';
}

class AddressRouteArgs {
  const AddressRouteArgs({this.key, required this.controller});

  final _i10.Key? key;

  final dynamic controller;

  @override
  String toString() {
    return 'AddressRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i6.ProductPage]
class ProductRoute extends _i9.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i10.Key? key})
      : super(ProductRoute.name,
            path: 'product', args: ProductRouteArgs(key: key));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key}';
  }
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
