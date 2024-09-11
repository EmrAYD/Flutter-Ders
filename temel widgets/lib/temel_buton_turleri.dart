import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun basıldı");
          },
          child: Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              //backgroundColor: WidgetStatePropertyAll(Colors.red)
              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.teal;
                }
                if (states.contains(WidgetState.hovered)) {
                  return Colors.orange;
                }
                return null;
              }),
              foregroundColor: WidgetStatePropertyAll(Colors.yellow),
              overlayColor:
                  WidgetStatePropertyAll(Colors.yellow.withOpacity(0.5))),
          icon: Icon(Icons.add),
          label: Text("Text Button with Icon"),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            child: Text("Elevated Button")),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("Elevated Button with Icon")),
        OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.purple, width: 2)),
            label: Text("Outlined Button")),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
                  side: BorderSide(color: Colors.red, width: 2)
            ),
            label: Text("Outlined Button"))
      ],
    );
  }
}
