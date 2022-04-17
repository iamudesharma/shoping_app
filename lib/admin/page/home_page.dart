import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../routes/routes.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _card(
                color: Colors.red,
                iconData: Icons.production_quantity_limits,
                onTap: () {
                  context.vxNav.push(
                    Uri.parse(
                      AdminRoutes.ProductPage,
                    ),
                  );
                },
                title: 'Product'),
            _card(
                color: Colors.blue,
                iconData: Icons.notifications,
                onTap: () {
                  context.vxNav.push(
                    Uri.parse(
                      AdminRoutes.Notifications,
                    ),
                  );
                },
                title: 'Notifications'),
            _card(
                color: Colors.amber,
                iconData: Icons.person,
                onTap: () {
                  context.vxNav.push(
                    Uri.parse(
                      AdminRoutes.UserPage,
                    ),
                  );
                },
                title: 'Users'),
            _card(
                color: Colors.primaries.first,
                iconData: Icons.shopping_cart,
                onTap: () {
                  context.vxNav.push(
                    Uri.parse(
                      AdminRoutes.OrderPage,
                    ),
                  );
                },
                title: 'Orders'),
          ],
        ),
      ),
    );
  }

  _card(
      {IconData? iconData,
      String? title,
      void Function()? onTap,
      Color? color}) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 200,
        width: 250,
        child: Card(
          color: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  iconData,
                  size: 50,
                ),
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
