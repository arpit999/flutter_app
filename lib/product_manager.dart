import 'package:flutter/material.dart';

import './products.dart';

import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // if we put bracket it take a default value of that parameter
  ProductManager({this.startingProduct});

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies called");
    super.didChangeDependencies();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add('Advance Food Tester');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(margin: EdgeInsets.all(10), child: ProductControl(_addProduct)),
      Expanded(child: Products(_products)),
    ]);
  }
}
