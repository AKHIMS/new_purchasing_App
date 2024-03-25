import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart_model.dart';


class CartProvider extends ChangeNotifier {
  List<CartItem> _items = [
    
  ];

  List<CartItem> get items => _items;

  void addItem(CartItem item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }
}
