import 'package:flutter/material.dart';

class Harcamalistesi extends StatelessWidget {
  final List<String> savedExpenses;

  const Harcamalistesi({Key? key, required this.savedExpenses})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Harcama Listesi")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kaydedilen Harcamalar:'),
            Expanded(
              child: ListView.builder(
                itemCount: savedExpenses.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(savedExpenses[index]),
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
