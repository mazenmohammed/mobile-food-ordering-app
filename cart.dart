import 'package:flutter/cupertino.dart';
import 'package:foodapp/Screens/home-screens/item.dart';

class cart extends ChangeNotifier {
  List<Item> _items = [];
  double _totalprice = 0.0;

  void add(Item item) {
    _items.add(item);
    _totalprice += item.price;
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    _totalprice -= item.price;
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalprice {
    return _totalprice;
  }

  List<Item> get basketItems {
    return _items;
  }
}
