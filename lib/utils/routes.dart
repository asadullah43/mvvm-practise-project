import 'package:flutter/material.dart';
import 'package:mvvm_practise/utils/routes_name.dart';
import 'package:mvvm_practise/view/home_screen.dart';
import 'package:mvvm_practise/view/login_screen.dart';
import 'package:mvvm_practise/view/signup_screen.dart';

class Routes {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignUpView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No route define"),
            ),
          );
        });
    }
  }
}
