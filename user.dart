import 'package:foodapp/Models/cart_items.dart';

class User {
  final String name;
  final Cart cart;

  User({required this.name, required this.cart});
}

Future<User> login() async {
  return await Future.delayed(Duration(seconds: 1), () {
    return User(name: 'Yohan', cart: Cart());
  });
}
