import 'package:flutter/material.dart';

class ProductItems extends StatelessWidget {
  final String itemsName;
  final String itemsPrice;
  final String imagePath;
  final color;
  ProductItems({
    super.key,
    required this.itemsName,
    required this.itemsPrice,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color[100],
      ),
      child: Column(
        children: [
          //image
          Image.asset(
            imagePath,
            width: 300,
            height: 100,
            fit: BoxFit.fill,
          ),
          //itemName
          Text("${itemsName}"),
          //price
          MaterialButton(
            onPressed: () {},
            color: color[200],
            child: Text("${itemsPrice}"),
          ),
        ],
      ),
    );
  }
}
