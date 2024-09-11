import 'package:flutter/material.dart';

class GestureDetectorKullanimi extends StatelessWidget {
  const GestureDetectorKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Detector Kullanımı"),),
      body: GridView.builder(
        itemCount: 102,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext contect, int index) {
          return GestureDetector(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.teal[100 * ((index + 1) % 9)],
                  gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.red],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://clipground.com/images/72x72-png-15.png"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                  border: Border.all(
                      color: Colors.blue, width: 5, style: BorderStyle.solid),
                  //borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 5),
                    blurRadius: 20
                  )],shape: BoxShape.circle),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Merhaba Flutter ${index + 1}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            onTap: ()=>debugPrint("Merhaba Flutter $index tek tıklanıldı"),
            onDoubleTap:()=>debugPrint("Merhaba Flutter $index çift tıklanıldı") ,
            onLongPress: ()=>debugPrint("Merhaba Flutter $index uzun basıldı"),
            onHorizontalDragStart: (e)=>debugPrint("Merhaba Flutter $index uzun basıldı $e"),
          );
        },
      ),
    );
  }
}