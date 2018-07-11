import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cart Page',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new CartPage(),
    );
  }
}

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('购物车'),
        centerTitle: true,
      ),
      body: new Center(
        child: new Text('Cart'),
      ),
    );
  }
}
