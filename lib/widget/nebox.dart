import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
 const NeuBox(
      {Key? key,
      this.child,
      this.width,
      this.height,
      this.backgroundColor = const Color.fromARGB(17, 248, 245, 245)})
      : super(key: key);
  final Widget? child;
  final double? width;
  final double? height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final double blurRadius = 5;
     final Offset offset = Offset(0, 1);

    return Container(
      constraints: BoxConstraints(
        minHeight: height ?? 30,
        maxWidth: width ?? 30,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color:const Color.fromARGB(255, 139, 138, 138),
            offset: -offset, // Adjust shadow position for neumorphism
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: Colors.white,
            offset: offset, // Adjust shadow position for neumorphism
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
