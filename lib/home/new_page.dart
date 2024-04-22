import 'package:flutter/material.dart';
import 'package:recipes_app/home/data/data.dart';
import 'package:recipes_app/home/harcamakaydet.dart';
import 'package:recipes_app/home/list.dart';

class NewPage extends StatelessWidget {
  final Yemek yemek;

  const NewPage({Key? key, required this.yemek}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = resimlerListesi.firstWhere((image) => image.id == yemek.id);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(''), // Title alanını boş bırakıyoruz
              background: Image.asset(
                image.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10), // Boşluk ekliyoruz
                  Text(
                    'Yemek Adı: ${yemek.name}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10), // Boşluk ekliyoruz
                  Text(
                    'Malzemeler:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: yemek.mazeme
                        .map((mazeme) => Text('- $mazeme'))
                        .toList(),
                  ),
                  SizedBox(height: 20), // Boşluk ekliyoruz
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Harcamakaydet()));
                    },
                    child: Text('Harcama Sayfayasına Git'), // Buton metni
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
