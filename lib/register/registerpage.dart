import 'package:flutter/material.dart';
import 'package:recipes_app/register/registerfrom.dart';


class Registerpage extends StatelessWidget {
  final void Function()? onTap;
  const Registerpage({Key? key, this.onTap}) : super(key: key);

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
                    padding:const EdgeInsets.all(10),
                    child: Registerfrom(
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
