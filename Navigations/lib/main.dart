import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/purple_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      /* routes: {
        '/redPage': (context) => RedPage(),
        '/ogrenciDetay' : (context)=>OgrenciDetay()
        '/' : (context)=>AnaSayfa(),
        '/orangePage': (context)=>OrangePage(),
      },
      
      onUnknownRoute: (settings)=> MaterialPageRoute(builder: (context)=>Scaffold(
        appBar: AppBar(title: Text('Error'),),
        body: Center(child: Text('404'),),
      )), */
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Islemleri'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              int? _gelenSayi = await Navigator.push<int>(
                context,
                CupertinoPageRoute(
                  builder: (redContext) => RedPage(),
                ),
              );
              print('Ana sayfadaki sayı $_gelenSayi');
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300),
            child: Text(
              'Kırmızı Sayfaya Gir IOS',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push<int>(MaterialPageRoute(builder: (context) => RedPage()))
                  .then((int? value) {
                debugPrint('Gelen sayı $value');
              });
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red.shade600),
            child: Text(
              'Kırmızı Sayfaya Gir Android',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red.shade600),
            child: Text(
              'Maybe Pop Kullanımı',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                print("evet pop olabilir");
              } else
                print('hayır olamaz');
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red.shade600),
            child: Text(
              'Can Pop Kullanımı',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => GreenPage(),
                ),
              );
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red.shade600),
            child: Text(
              'Push Replacament Kullanımı',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushNamed(routeName);
              Navigator.pushNamed(context, '/orangePage');
            },
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade600),
            child: Text(
              'PushNamed Kullanımı',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushNamed(routeName);
              Navigator.pushNamed(context, '/yellowPage');
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow.shade600),
            child: Text(
              'PushNamed Kullanımı Yellow',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/ogrenciListesi', arguments: 80);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange.shade600),
            child: Text(
              'Liste Olustur',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/purplePage');
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade600),
            child: Text(
              'Mor Sayfaya Git',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
