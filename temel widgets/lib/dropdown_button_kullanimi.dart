import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumsehirler = ["Ankara", "Bursa", "Istanbul", "Izmir", "Adıyaman","Van"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir seçiniz"),
        icon: Icon(Icons.arrow_downward),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: TextStyle(color: Colors.red),
        items: _tumsehirler.map((String oankisehir) => DropdownMenuItem(
              child: Text(oankisehir),
              value: oankisehir,
            ),).toList(),
        /*items: [
        DropdownMenuItem(
          child: Text("Ankara Şehri"),
          value: "Ankara",
        ),
        DropdownMenuItem(
          child: Text("İzmir Şehri"),
          value: "İzmir",
        ),
        DropdownMenuItem(
          child: Text("Bursa Şehri"),
          value: "Bursa",
        ),
      ],*/
        value: _secilenSehir,
        onChanged: (String? s) {
          setState(() {
            _secilenSehir = s;
          });
        },
      ),
    );
  }
}
