import 'dart:math';

import 'package:flutter/material.dart';

class CollapsableToolbar extends StatelessWidget {
  const CollapsableToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Custom Scrollview App",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              background: Image.network(
                "https://www.wallpapers13.com/wp-content/uploads/2018/03/Lake-Mountain-sky-reflection-Desktop-Wallpapers-high-resolution-1920x1080-840x525.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.all(4),
            sliver: SliverList(
              delegate: SliverChildListDelegate(sabitListeElemanlari()),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    _dinamikElemanUretenFonksiyon,
                    childCount: 10)),
          ),

          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverFixedExtentList(
                delegate: SliverChildListDelegate(sabitListeElemanlari()),
                itemExtent: 100),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                    _dinamikElemanUretenFonksiyon,
                    childCount: 6),
                itemExtent: 50),
          ),

          //Dinamik elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
          ),

          //Sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz grid türü
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),

          //Dinamik elemanlarla bir elemanın satırda max genişliğini söylediğimiz grid türü
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200),
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
          ),

          SliverGrid.count(
            crossAxisCount: 6,
            children: sabitListeElemanlari(),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 300,
            children: sabitListeElemanlari(),
          )
        ],
      ),
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        child: Text(
          "Sabit liste elemanı 1",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit liste elemanı 2",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit liste elemanı 3",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit liste elemanı 4",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit liste elemanı 5",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit liste elemanı 6",
          style: TextStyle(
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik liste elemanı ${index + 1}",
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
      color: _rastgeleRenkUret(),
      alignment: Alignment.center,
    );
  }
}

Color _rastgeleRenkUret() {
  return Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
      Random().nextInt(255), Random().nextInt(255));
}
