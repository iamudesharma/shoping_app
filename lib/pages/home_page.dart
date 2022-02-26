import 'package:flutter/material.dart';
import 'package:shoping_app/pages/user_setup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UserSetUpPage(),
      ),
    );
  }
}
