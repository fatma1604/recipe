//CLASS
//KATEGORESİ
//YEMEK

import 'package:flutter/material.dart';
import 'package:recipes_app/home/list.dart';

class Categori {
  final String name;
  final int id;
  final Color color;

  const Categori({
    required this.name,
    required this.id,
    required this.color,
  });
}

class Yemek {
  final int id;
  final String name;
  final List<String> mazeme;


  const Yemek({
    required this.id,
    required this.name,
    required this.mazeme,
   
  });


}


class Images {
  final String imagePath;
  final int id;
  

  const Images({required this.imagePath, required this.id});
}
