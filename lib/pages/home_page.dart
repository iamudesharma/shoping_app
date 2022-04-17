import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/pages/account_page.dart';
import 'package:shoping_app/pages/cart_page.dart';
import 'package:shoping_app/pages/products/product_page.dart';
import 'package:shoping_app/pages/search_page.dart';
import 'package:shoping_app/pages/user_setup.dart';
import 'package:shoping_app/routes/app_routes.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        ProductRoute(),
        CartRoute(),
        AccountRoute(),
      ],
      builder: (context, child, animation) {
        final tabRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: tabRouter.activeIndex,
            onTap: (index) {
              tabRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
