import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items that are on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color],
    ["Avocado", "140", "lib/images/avocado.png", Colors.green],
    ["Banana", "60", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "120", "lib/images/chicken.png", Colors.brown],
    ["Water Bottle", "20", "lib/images/water.png", Colors.blue],
  ];

  get shopItems => _shopItems;
}
