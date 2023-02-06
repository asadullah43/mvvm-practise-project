import 'package:flutter/cupertino.dart';

import 'package:mvvm_practise/repository/auth_repository.dart';
import 'package:mvvm_practise/utils/routes_name.dart';
import 'package:mvvm_practise/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();
  bool _loading = false;
  bool get lodaing => _loading;
  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool _signuploading = false;
  bool get signuplodaing => _signuploading;
  setSignUpLoading(bool value) {
    _signuploading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo
        .loginApi(data)
        .then((value) => {
              setLoading(false),
              flushBarErrorMessage("LoginSuccessfully", context),
              Navigator.pushNamed(context, RoutesName.home),
            })
        .onError((error, stackTrace) => {
              setLoading(true),
              flushBarErrorMessage(error.toString(), context),
            });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myRepo
        .loginApi(data)
        .then((value) => {
              setSignUpLoading(false),
              flushBarErrorMessage("Sign Up Successfully", context),
              Navigator.pushNamed(context, RoutesName.home),
            })
        .onError((error, stackTrace) => {
              setSignUpLoading(true),
              flushBarErrorMessage(error.toString(), context),
            });
  }
}
