import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      margin: EdgeInsets.only(top: margin),
      alignment: Alignment.center,
      color: renk,
      height: 90,
      width: 60,
      child: Text(harf, style: TextStyle(fontSize: 22)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.purple,
      ),
      home: Scaffold(
        //backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Başlık"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                containerOlustur("D", Colors.orange.shade100),
                containerOlustur("A", Colors.orange.shade200),
                containerOlustur("R", Colors.orange.shade300),
                containerOlustur("T", Colors.orange.shade400),
              ],
            ),
            containerOlustur("E", Colors.orange.shade200, margin: 5),
            containerOlustur("R", Colors.orange.shade300, margin: 5),
            containerOlustur("S", Colors.orange.shade400, margin: 5),
            containerOlustur("L", Colors.orange.shade500, margin: 5),
            containerOlustur("E", Colors.orange.shade600, margin: 5),
            containerOlustur("R", Colors.orange.shade700, margin: 5),
            containerOlustur("İ", Colors.orange.shade800, margin: 5),
          ],
        ),
      ),
    );
  }
}
