import 'package:flutter/material.dart';
import 'package:recipes_app/home/detay/resimler.dart';
import 'package:recipes_app/home/list.dart';
import 'package:recipes_app/home/new_page.dart';

class ReimlerPage extends StatelessWidget {
  final int categoryId;

  const ReimlerPage({Key? key, required this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sadece categoryId'ye uygun resimlerin listesi
    final filteredResimlerListesi = resimlerListesi
        .where((resim) => yemekListesi[resim.id - 1].id == categoryId)
        .toList();

    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: filteredResimlerListesi.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewPage(
                    yemek: yemekListesi[filteredResimlerListesi[index].id - 1],
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(11),
              child: Resimler(
                images: filteredResimlerListesi[index],
              ),
            ),
          );
        },
      ),
    );
  }
}