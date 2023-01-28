import 'package:flutter/material.dart';
import 'package:mvvm_practise/utils/routes_name.dart';
import 'package:mvvm_practise/view/home_screen.dart';
import 'package:mvvm_practise/view/login_screen.dart';

class Routes {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen());

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
