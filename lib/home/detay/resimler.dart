import 'package:flutter/material.dart';
import 'package:recipes_app/home/data/data.dart';
import 'package:recipes_app/home/list.dart';

class Resimler extends StatelessWidget {
  const Resimler({Key? key, required this.images}) : super(key: key);
  final Images images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.elliptical(65, 95),
            topRight: Radius.elliptical(65, 95),
            bottomLeft: Radius.elliptical(10, 50),
            bottomRight: Radius.elliptical(10, 50),
          ),
          child: Image.asset(
            images.imagePath,
            fit: BoxFit.cover,
            width: 120,
            height: 120,
          ),
        ),
        SizedBox(height: 8), // Biraz boşluk ekleyelim
        Text(
          yemekListesi[images.id - 1].name, // Yemeğin adını buraya ekliyoruz
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}