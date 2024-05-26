import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String? teks1;
  final String? teks2;
  final double teks1FontSize;

  TeksUtama({this.teks1, this.teks2, this.teks1FontSize = 14.0});

  @override
  Widget build(BuildContext context) {
    bool isSeptianiPutri = teks1 == 'Septiani Putri' && teks2 == 'NIM:STI202102330';

    return Container(
      color: isSeptianiPutri ? Colors.green : Colors.transparent,
      child: Column(
        children: [
          Text(
            teks1 ?? '',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: teks1FontSize),
          ),
          Text(
            teks2 ?? '',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                TeksUtama(
                  teks1: 'Nofi Amalia',
                  teks2: 'NIM:STI202102327',
                  teks1FontSize: 22.0,
                ),
                TeksUtama(
                  teks1: 'Riska Anggraeni Santoso',
                  teks2: 'NIM:STI202102329',
                  teks1FontSize: 22.0,
                ),
                TeksUtama(
                  teks1: 'Septiani Putri',
                  teks2: 'NIM:STI202102330',
                  teks1FontSize: 22.0,
                ),
                TeksUtama(
                  teks1: 'Abdul Shakur',
                  teks2: 'NIM:STI202102334',
                  teks1FontSize: 22.0,
                ),
                TeksUtama(
                  teks1: 'Nurul Masithoh',
                  teks2: 'NIM:STI202102337',
                  teks1FontSize: 22.0,
                ),
              ],
            ),  
          ),
        ),
      ),
    )
  );
}
