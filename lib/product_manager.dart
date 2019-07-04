import 'package:flutter/material.dart';
import './product.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = ['product'];
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: (){
                  setState(() {
                    _products.add("value" + _products.length.toString());
                  });
                  
                },
                child: Text("Press to add"),
              ),
            
            ),
            Expanded(child:  ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: _products.length,
                itemBuilder: (BuildContext context, int index){
                  return Product(_products[index]);
                }
              )),
          
            
            ]);
  }
}