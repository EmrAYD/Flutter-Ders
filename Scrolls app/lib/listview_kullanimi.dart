import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      5000,
      (index) => Ogrenci(index + 1, "Ogrenci adı ${index + 1}",
          "Ogrenci soyadı ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Lsitesi"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          var oankiOgrenci= tumOgrenciler[index];
          return Card(
            color: index % 2 == 0
                ? Colors.orange.shade100
                : Colors.purple.shade100,
            child: ListTile(
              onTap: () {
                if (index % 2 == 0) {
                  EasyLoading.instance.backgroundColor = Colors.red;
                  EasyLoading.instance.textColor = Colors.purple;
                } else {
                  EasyLoading.instance.backgroundColor = Colors.blue;
                }
                EasyLoading.showToast("Elemana tıklandı",
                    duration: Duration(seconds: 3),
                    dismissOnTap: true,
                    toastPosition: EasyLoadingToastPosition.bottom);
              },
              onLongPress: () {
                _alertDialogIslemleri(context, oankiOgrenci);
              },
              title: Text(tumOgrenciler[index].isim),
              subtitle: Text(tumOgrenciler[index].soyisim),
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].id.toString()),
              ),
            ),
          );
        },
        itemCount: tumOgrenciler.length,
        separatorBuilder: (context, index) {
          if ((index + 1) % 4 == 0) {
            return Divider(
              thickness: 2,
              color: Colors.teal,
            );
          }
          return SizedBox();
        },
      ),
    );
  }

  ListView listViewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              debugPrint("Eleman tıklandı : $index");
            },
            title: Text(tumOgrenciler[index].isim),
            subtitle: Text(tumOgrenciler[index].soyisim),
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci e) => ListTile(
                title: Text(e.isim),
                subtitle: Text(e.soyisim),
                leading: CircleAvatar(
                  child: Text(e.id.toString()),
                ),
              ))
          .toList(),
    );
  }
}

void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
  showDialog(
    barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Emre" * 100),
                Text("Emre1" * 100),
                Text("Emre2" * 100),
              ],
            ),
          ),
          actions: [
            OverflowBar(
              children: [
                TextButton(onPressed: () {Navigator.pop(context);}, child: Text("KAPAT")),
                TextButton(onPressed: () {}, child: Text("TAMAM")),
              ],
            )
          ],
        );
      });
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    return "Isım: $isim, Soyisim: $soyisim Id: $id";
    
  }
}
