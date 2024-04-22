import 'package:flutter/material.dart';
import 'package:recipes_app/widget/nebox.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget prefixIcon;
  final IconButton? suffixIcon;
  final String hintText;
  final bool? obscureText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? autocorrect;

  const MyTextField({
    Key? key,
    this.controller,
    required this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    this.obscureText,
    this.onSaved,
    this.validator,
    this.keyboardType,
    this.autocorrect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return NeuBox(
      width: mediaQuery.width * 0.8,
      height: mediaQuery.height * 0.01,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          autocorrect: autocorrect ?? false,
          keyboardType: keyboardType,
          onSaved: onSaved,
          validator: validator,
          controller: controller,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(10, 243, 229, 229),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(78, 63, 63, 63)),
            ),
            filled: true,
            fillColor:const Color.fromARGB(50, 255, 255, 255),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color.fromARGB(255, 24, 18, 18),
              shadows: [
                BoxShadow(
                  color: Color.fromARGB(24, 252, 248, 248), // Shadow rengi
                  blurRadius: 3,
                  offset: Offset(0, 0), // Gölgelendirme yönü ve mesafesi
                ),
              ],
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
