//LİSTELER GELECEK
import 'package:flutter/material.dart';
import 'package:recipes_app/home/data/data.dart';

const categorylist = [
  Categori(
    name: "Ana yemk",
    id: 1,
    color: Colors.yellowAccent,
  ),
  Categori(
    name: "Ara Sıcak ",
    id: 2,
    color: Color(0xFFFFD740),
  ),
  Categori(name: "Tatlı", id: 3, color: Colors.pink),
  Categori(name: "Salata", id: 4, color: Colors.pink),
];
const yemekListesi = [
  Yemek(
      id: 1,
      name: "Köfte",
      mazeme: ["Kıyma, Soğan, Ekmek İçi, Tuz, Karabiber "]),
  Yemek(
      id: 1,
      name: "Tavuk Sote",
      mazeme: ["Tavuk Göğsü, Soğan, Biber, Domates, Zeytinyağı "]),
  Yemek(
      id: 1,
      name: "Sebzeli Pilav",
      mazeme: ["Pirinç, Havuç, Bezelye, Patlıcan, Biber "]),
  Yemek(id: 1, name: "Etli Kuru Fasulye", mazeme: [
    "Malzemeler: Kuru Fasulye, Et, Soğan, Domates Salçası, Zeytinyağı "
  ]),
  Yemek(id: 1, name: "Etli Kuru Fasulye", mazeme: [
    "Malzemeler: Kuru Fasulye, Et, Soğan, Domates Salçası, Zeytinyağı "
  ]),
  Yemek(
      id: 1,
      name: "Izgara Balık ",
      mazeme: ["Levrek, Limon, Zeytinyağı, Tuz, Karabiber"]),
  Yemek(
      id: 2,
      name: "Patates Kızartması",
      mazeme: ["Patates", "Ayçiçek Yağı", "Tuz", "Kekik"]),
  Yemek(id: 2, name: "Fırında Tavuklu Sebzeli Patates Kızartması", mazeme: [
    "tavuk göğsü",
    "patates",
    "biber",
    "sogan",
    "sarımsak",
    "tuz",
    "karabiber",
    "pul biber",
    "kekik"
  ]),
  Yemek(
      id: 2,
      name: "Sigara Böreği",
      mazeme: ["Yufka", "Peynir", "Maydanoz", "Sıvıyağ", "Yumurta"]),
  Yemek(
      id: 2,
      name: "Çıtır Tavuk",
      mazeme: ["Tavuk Kanatları", "Un", "Yumurta", "Galeta Unu", "Tuz"]),
  Yemek(
      id: 2,
      name: "Közlenmiş Patlıcan Salatası",
      mazeme: ["Patlıcan", "Domates", "Yeşil Biber", "Zeytinyağı", "Limon"]),
  Yemek(
      id: 3,
      name: "Baklava",
      mazeme: ["Yufka", "Ceviz", "Şeker", "Su", "Limon"]),
  Yemek(
      id: 3,
      name: "Kazandibi",
      mazeme: ["Süt", "Pirinç Unu", "Şeker", "Yumurta", "Vanilya"]),
  Yemek(
      id: 3,
      name: "Revani",
      mazeme: ["Un", "Şeker", "Yumurta", "Yoğurt", "Limon"]),
  Yemek(
      id: 3,
      name: "İrmik Helvası",
      mazeme: ["İrmik", "Şeker", "Su", "Tereyağı", "Antep Fıstığı"]),
  Yemek(
      id: 3,
      name: "Cheesecake",
      mazeme: ["Bisküvi", "Krem Peynir", "Yumurta", "Şeker", "Krema"]),
  Yemek(
      id: 4,
      name: "Garden Salata",
      mazeme: ["Marul", "Domates", "Salatalık", "Havuç", "Mısır"]),
  Yemek(
      id: 4,
      name: "Mevsim Salatası",
      mazeme: ["Marul", "Roka", "Kırmızı Lahana", "Pancar", "Havuç"]),
  Yemek(id: 4, name: "Caprese Salatası", mazeme: [
    "Mozzarella Peyniri",
    "Domates",
    "Taze Fesleğen",
    "Zeytinyağı",
    "Balsamik Sirke"
  ]),
  Yemek(id: 4, name: "Cevizli Roka Salatası", mazeme: [
    "Roka",
    "Ceviz",
    "Parmesan Peyniri",
    "Limon Suyu",
    "Zeytinyağı"
  ]),
  Yemek(
      id: 4,
      name: "Mango Avokado Salatası",
      mazeme: ["Marul", "Mango", "Avokado", "Kırmızı Soğan", "Limon Suyu"]),
];
const List<Images> resimlerListesi = [
  Images(
    imagePath: "assets/images/kofte.jpg",
    id: 1,
  ),
  Images(imagePath: "assets/images/tavuksote.jpg", id: 2),
  Images(imagePath: "assets/images/1.jpg", id: 3),
  Images(imagePath: "assets/images/2.jpg", id: 4),
  Images(imagePath: "assets/images/3.jpg", id: 6),
  Images(imagePath: "assets/images/patets.jpg", id: 7),
  Images(imagePath: "assets/images/51.jpg", id: 8),
  Images(imagePath: "assets/images/6.jpg", id: 9),
  Images(imagePath: "assets/images/7.jpg", id: 10),
  Images(imagePath: "assets/images/8.jpg", id: 11),
  Images(imagePath: "assets/images/9.jpg", id: 12),
  Images(imagePath: "assets/images/10.jpg", id: 13),
  Images(imagePath: "assets/images/11.jpg", id: 14),
  Images(imagePath: "assets/images/13jpg.jpg", id: 15),
  Images(imagePath: "assets/images/14.jpg", id: 16),
  Images(imagePath: "assets/images/mevsim.jpg", id: 17),
  Images(imagePath: "assets/images/mevsim.jpg", id: 18),
  Images(imagePath: "assets/images/caprese.jpg", id: 19),
  Images(imagePath: "assets/images/cevizli.jpg", id: 20),
  Images(imagePath: "assets/images/manga.jpg", id: 21),
];
