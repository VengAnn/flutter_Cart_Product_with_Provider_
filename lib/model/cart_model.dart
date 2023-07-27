import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items sell
  final List _shopItems = [
    //[itemsName,itemsPrice,imagePath,color]
    ["CoCa", "2.00", "images/pic5.jpg", Colors.green],
    ["Water", "1.00", "images/pic2.jpg", Colors.yellow],
    ["Milk", "3.00", "images/pic3.jpeg", Colors.deepPurple],
    ["Beasts", "4.00", "images/pic4.png", Colors.green],
  ];
  get shopItems => _shopItems;
}
