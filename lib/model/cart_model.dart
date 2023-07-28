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

  //list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  //Add items to carts
  void addItemsToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove items to carts
  void removeItemsFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
