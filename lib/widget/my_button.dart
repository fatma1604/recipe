import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onTap;

  const MyButton({
    Key? key,
    required this.buttonText,
    this.onTap,
  }) : super(key: key);
// Color.fromARGB(255, 247, 95, 95)
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:const Color.fromARGB(255, 189, 223, 250),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 100.0,
          vertical: 20.0,
        ),
        child: Text(
          buttonText,
          style:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 18,
            shadows:  [
              BoxShadow(
                color: Color.fromARGB(121, 255, 227, 238),
                blurRadius: 3,
                offset: Offset(0, 1), // Gölgelendirme yönü ve mesafesi
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//