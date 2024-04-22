import 'package:flutter/material.dart';

class Harcamakaydet extends StatefulWidget {
  const Harcamakaydet({Key? key}) : super(key: key);

  @override
  _HarcamakaydetState createState() => _HarcamakaydetState();
}

class _HarcamakaydetState extends State<Harcamakaydet> {
  TextEditingController _harcamaController = TextEditingController();
  List<String> _kaydedilenHarcamalar = [];
  String?
      _selectedCategory; // Değişiklik: Null değere izin veren bir String türü

  void _harcamaKaydet() {
    String harcamaMiktarri = _harcamaController.text;
    if (_selectedCategory != null) {
      String harcamaYazi = '$_selectedCategory: $harcamaMiktarri';
      setState(() {
        _kaydedilenHarcamalar.add(harcamaYazi);
        _harcamaController.clear();
        _selectedCategory = null; // Harcama yapıldıktan sonra seçimi sıfırla
      });
      print("Harcama miktarı: $harcamaMiktarri");
      // Burada harcamayı kaydetmek istediğiniz işlemleri gerçekleştirin.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Harcamayı Kaydet")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedCategory,
              onChanged: (newValue) {
                setState(() {
                  _selectedCategory = newValue;
                });
              },
              decoration: InputDecoration(
                labelText:
                    'Kategori Seçiniz', // Burada "Seçiniz" olarak güncellendi
                border: OutlineInputBorder(),
              ),
              items: ['Ana Yemek', 'Ara Sıcak', 'Tatlı', 'Salata']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 16),
            TextFormField(
              controller: _harcamaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Harcama Miktarı',
              ),
            ),
            const SizedBox(height: 16),
            // Harcama Kaydet Butonu
            ElevatedButton(
              onPressed: _harcamaKaydet,
              child: const Text('Kaydet'),
            ),
            const SizedBox(height: 16),
            // Kaydedilen Harcamaların Gösterimi
            Text('Kaydedilen Harcamalar:'),
            Expanded(
              child: ListView.builder(
                itemCount: _kaydedilenHarcamalar.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_kaydedilenHarcamalar[index]),
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
