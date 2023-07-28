import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductItems extends StatelessWidget {
  final String itemsName;
  final String itemsPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;
  ProductItems({
    super.key,
    required this.itemsName,
    required this.itemsPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
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
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              width: 300,
              height: 150,
              fit: BoxFit.fill,
            ),
          ),
          //itemName
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("$itemsName"),
          ),
          //price
          MaterialButton(
            onPressed: onPressed,
            color: color[800],
            child: Text("\$ $itemsPrice"),
          ),
        ],
      ),
    );
  }
}
