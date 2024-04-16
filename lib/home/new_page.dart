import 'package:flutter/material.dart';
import 'package:recipes_app/home/data/data.dart';
import 'package:recipes_app/home/list.dart';


class NewPage extends StatefulWidget {
  const NewPage({Key? key, required this.categori}) : super(key: key);
  final Categori categori;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  bool _isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });

    if (_isFavorited) {
      // Favoriye ekleme işlemi burada gerçekleştirilebilir
      // Örneğin, bir veritabanına kaydedebilirsiniz
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Favorilere Eklendi'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Tamam'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Yemek> yemekler = yemekListesi
        .where((element) => element.id == widget.categori.id)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.categori.name)),
        actions: [
          IconButton(
            onPressed: _toggleFavorite,
            icon: Icon(
              _isFavorited ? Icons.favorite : Icons.favorite_border,
              color: _isFavorited ? Colors.red : null,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Harcama TextField

          // Yemek Listesi
          Expanded(
            child: ListView.builder(
              itemCount: yemekler.length,
              itemBuilder: (context, index) => ListTile(
                title: Text('Yemek Adı: ${yemekler[index].name}'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Malzemeler: ${yemekler[index].mazeme.join(', ')}'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
