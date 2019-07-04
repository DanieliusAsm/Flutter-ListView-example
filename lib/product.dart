import 'package:flutter/material.dart';

class Product extends StatelessWidget{
  List<String> products;

  Product(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: products.map((element) =>
        Card(
          child:Row(
            children: <Widget>[
              Image.asset('assets/ic_launcher.png'),
              Text(element)
            ],
          ),
        )
    ).toList());
  }
}