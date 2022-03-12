import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/routes/app_routes.gr.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Orders',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _orderTile(title: 'Your Order'),
              const SizedBox(
                height: 5,
              ),
              _orderTile(title: 'Order History'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Account settings',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _orderTile(title: 'Login & Security'),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  print('onTap');
                  AutoRouter.of(context).push(AddressRoute());
                },
                child: _orderTile(title: 'Your Addresses', onTap: () {}),
              ),
              const SizedBox(
                height: 5,
              ),
              _orderTile(title: 'Change Password'),
              const SizedBox(
                height: 5,
              ),
              _orderTile(title: 'Change language'),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Contact us',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _orderTile(title: 'Chat with us'),
              const SizedBox(
                height: 5,
              ),
              _orderTile(title: 'Call us'),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _orderTile({required String title, void Function()? onTap}) {
    return Container(
      child: GestureDetector(
        onTap: () => onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            children: [
              Text(title),
              Spacer(),
              Icon(Icons.arrow_circle_right_outlined),
            ],
          ),
        ),
      ),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
    );
  }
}
