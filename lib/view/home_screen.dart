import 'package:flutter/material.dart';
import 'package:mvvm_practise/utils/routes_name.dart';
import 'package:mvvm_practise/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPrefrence = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
              onTap: () {
                userPrefrence.remove().then((value) {
                  Navigator.pushNamed(context, RoutesName.login);
                });
              },
              child: const Center(child: Text("Logout"))),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
