import 'package:flutter/material.dart';
import '../data/models/invoice.dart';
import '../core/utils/gst_utils.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => List.unmodifiable(_cartItems);

  void addProduct(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  double get subtotal => _cartItems.fold(0, (sum, item) => sum + item.price);

  double gstForRate(double rate) {
    return _cartItems
        .where((item) => item.gstRate == rate)
        .fold(0, (sum, item) => sum + GstUtils.calculateGst(item.price, rate));
  }

  double get total => _cartItems.fold(0, (sum, item) => sum + GstUtils.calculateTotalWithGst(item.price, item.gstRate));

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
