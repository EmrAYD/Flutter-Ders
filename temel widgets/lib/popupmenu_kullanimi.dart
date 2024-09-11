import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({super.key});

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilenSehir = "Ankara";
  List<String> renkler = ["mavi", "yeşil", "kırmızı", "sarı", "siyah"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            _secilenSehir = sehir;
          });
          debugPrint("Seçilen şehir: $_secilenSehir");
        },
        //child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          return renkler.map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("Bursa"),
              value: "Bursa",
            ),
            PopupMenuItem(
              child: Text("Van"),
              value: "Van",
            ),
          ]; */
        },
      ),
    );
  }
}
