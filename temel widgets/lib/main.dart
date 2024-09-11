import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropdown_button_kullanimi.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';
import 'package:flutter_temel_widgets/popupmenu_kullanimi.dart';
import 'package:flutter_temel_widgets/temel_buton_turleri.dart';

void main() {
  debugPrint("Main metodu çalıştı");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build çalıştı");
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(backgroundColor:  Colors.blue)),
        textTheme: TextTheme(
            headlineLarge:
                TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buton Örenkleri"),
          backgroundColor: Colors.teal,
          actions: [PopupmenuKullanimi()],
        ),
        body: const PopupmenuKullanimi(),
      ),
    );
  }
}
