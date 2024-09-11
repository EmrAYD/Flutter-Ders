import 'package:flutter/material.dart';

class ListviewLayoutPlroblemleri extends StatelessWidget {
  const ListviewLayoutPlroblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Layout Problemleri"),
      ),
      body: Container(
        height: 200,
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
        child: Row(
          children: [
            Text("Başladı"),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        ),
      ),
    );
  }

  Column columnIcindeListe() {
    return Column(
      children: [
        Text("Başladı"),
        Expanded(
          child: ListView(
            //shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
            ],
          ),
        ),
        Text("Bitti"),
      ],
    );
  }
}
