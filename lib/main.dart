import 'package:flutter/material.dart';

import './product_manager.dart';
//import 'package:flutter/rendering.dart';

void main() {
//  // Enable UI debuging
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  // Tap showing on the screen
//  debugPaintPointersEnabled = true;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // show pixel grid in screen
//      debugShowMaterialGrid: true,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
//          brightness: Brightness.light,
//          accentColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager(),
      ),
    );
  }
}
