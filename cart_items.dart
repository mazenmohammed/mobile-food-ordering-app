import 'package:flutter/foundation.dart';
import 'package:foodapp/Models/products.dart';
import 'package:foodapp/main.dart';

class Cart with ChangeNotifier {
  List<Product> products = [];
  double get total {
    return products.fold(0.0, (double currentTotal, Product nextProduct) {
      return (currentTotal + nextProduct.cost);
    });
  }

  void AddToCart(Product product) => products.add(product);
  void RemoveFromCart(Product product) {
    products.remove(product);
    notifyListeners();
  }
}
