import 'package:flutter/material.dart';
import 'package:shoping_app/helpers/textformfield_helper.dart';

class UserSetUpPage extends StatelessWidget {
  const UserSetUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Set Up Your Account'),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
               TextFormHelpers.textFormFields(controller: , label: label, hint: hint) ,
              ],
            ),
          ),
        ));
  }
}
