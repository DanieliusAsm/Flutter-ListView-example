import 'package:flutter/material.dart';

class Product extends StatelessWidget{
  final String product;

  Product(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
        Card(
          child:Row(
            children: <Widget>[
              Image.asset('assets/ic_launcher.png'),
              Text(product)
            ],
          ),
        ),
    ]);
  }
}