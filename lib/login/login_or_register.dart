import 'package:flutter/material.dart';
import 'package:recipes_app/login/login.dart';
import 'package:recipes_app/register/registerpage.dart';




class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  _LoginOrRegisterState createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return Login(
       onTap:togglePages,
      );
    } else {
      return Registerpage(
        onTap: togglePages,
      );
    }
  }
}
