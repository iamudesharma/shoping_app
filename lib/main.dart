import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoping_app/pages/login_page.dart';

import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.pages,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.amberAccent,
        useMaterial3: true,
        typography: Typography.material2018(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
