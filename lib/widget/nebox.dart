import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  const NeuBox(
      {Key? key,
      this.child,
      this.width,
      this.height,
      this.backgroundColor = Colors.blueGrey})
      : super(key: key);
  final Widget? child;
  final double? width;
  final double? height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final double blurRadius = 10;
    final Offset offset = Offset(4, 4);

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
            color: Color.fromARGB(255, 120, 158, 177),
            offset: -offset, // Adjust shadow position for neumorphism
            blurRadius: blurRadius,
          ),
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0),
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
