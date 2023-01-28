import 'package:flutter/material.dart';
import 'package:mvvm_practise/utils/routes_name.dart';
import 'package:mvvm_practise/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, RoutesName.home);
                  // Utils.toastMessage('No routes found');
                  flushBarErrorMessage('no internet', context);
                },
                child: Text("Click")),
          )
        ],
      ),
    );
  }
}
