import 'package:flutter/material.dart';
import 'package:recipes_app/login/loginfrom.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   final void Function()? onTap;

 Login({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Adsız tasarım.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            child: Transform.translate(
              offset: const Offset(0, 90), // Adjust the value as needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: LoginFrom(
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
