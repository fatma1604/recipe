import 'package:flutter/material.dart';
import 'package:recipes_app/home/data/data.dart';
import 'package:recipes_app/home/detay/reimler_page.dart';

class Kategorykart extends StatelessWidget {
  const Kategorykart({
    Key? key,
    required this.categori,
  }) : super(key: key);
  final Categori categori;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ReimlerPage(
                      categoryId: categori.id,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent.withOpacity(0.5),
              Colors.pink.withOpacity(0.5),
            ],
          ),
        ),
        child: Center(
            child: Text(
          categori.name,
          style: const TextStyle(
            fontSize: 20, // Yazı boyutu
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 82, 88, 94),
          ),
        )),
      ),
    );
  }
}
