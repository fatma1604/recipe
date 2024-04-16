import 'package:flutter/material.dart';
import 'package:recipes_app/home/harcamalistesi.dart';

class Harcamakaydet extends StatefulWidget {
  const Harcamakaydet({Key? key}) : super(key: key);

  @override
  _HarcamakaydetState createState() => _HarcamakaydetState();
}

class _HarcamakaydetState extends State<Harcamakaydet> {
  TextEditingController _harcamaController = TextEditingController();
  List<String> _kaydedilenHarcamalar = [];

  void _harcamaKaydet() {
    String harcamaMiktarri = _harcamaController.text;
    setState(() {
      _kaydedilenHarcamalar.add(harcamaMiktarri);
      _harcamaController.clear();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Harcamalistesi(
            savedExpenses: _kaydedilenHarcamalar,
          ),
        ),
      );
    });
    print("Harcama miktarı: $harcamaMiktarri");
    // Burada harcamayı kaydetmek istediğiniz işlemleri gerçekleştirin.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Harcamayı Kaydet")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _harcamaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Harcama Miktarı',
              ),
            ),
            SizedBox(height: 16),
            // Harcama Kaydet Butonu
            ElevatedButton(
              onPressed: _harcamaKaydet,
              child: Text('Kaydet'),
            ),
            SizedBox(height: 16),
            // Kaydedilen Harcamaların Gösterimi
            Text('Kaydedilen Harcamalar:'),
            Expanded(
              child: ListView.builder(
                itemCount: _kaydedilenHarcamalar.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Harcama Kaydedildi'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
