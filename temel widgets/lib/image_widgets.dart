import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL = "https://eskipaper.com/images/supercar-4.jpg";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      "assets/images/car.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.red.shade300,
                    child: Image.network(
                      _imgURL,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.red.shade300,
                    child: CircleAvatar(
                      /* child: Text(
                    "E",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ), */
                      backgroundImage: NetworkImage(_imgURL),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.red,
                      child: Padding(padding: const EdgeInsets.all(8.0)),
                    )),
              ),
            ],
          )),
          Container(
              height: 200,
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: "assets/images/loading.gif",
                  image: _imgURL)),
          Expanded(
              child:
                  Padding(
                    padding: EdgeInsets.all(10), 
                    child: Placeholder()
                    )
                  ),
        ],
      ),
    );
  }
}
