import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build çalıştı");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Counter Appbar",
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyNewTextWidget(),
            Text(_sayac.toString(),
                style: Theme.of(context).textTheme.headlineLarge),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Buton tıklandı ve sayaç değeri: $_sayac");
          sayacArt();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayacArt() {
    setState(() {
      _sayac++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Butona basılma miktarı",
      style: TextStyle(fontSize: 24),
    );
  }
}
