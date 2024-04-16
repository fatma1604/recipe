import 'package:flutter/material.dart';
import 'package:recipes_app/home/data/data.dart';
import 'package:recipes_app/home/new_page.dart';


class Kategorykart extends StatelessWidget {
  const Kategorykart(
      {Key? key, required this.categori, required this.onKategoryClik})
      : super(key: key);
  final Categori categori;
  final void Function() onKategoryClik;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewPage(
                      categori: categori,
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
          style: TextStyle(
            fontSize: 20, // Yazı boyutu
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        )),
      ),
    );
  }
}
