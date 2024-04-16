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
          color:Color.fromARGB(255, 64, 115, 156),
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 100.0,
          vertical: 20.0,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color:  Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 18,
            shadows: const [
              BoxShadow(
                color: Color.fromARGB(122, 185, 105, 138),
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