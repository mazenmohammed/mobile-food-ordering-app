import 'package:flutter/material.dart';
import 'package:foodapp/Screens/home-screens/cart.dart';
import 'package:provider/provider.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(builder: (context, cart, child) {
      return Scaffold(
          appBar: AppBar(
            title: Text('Checkout Page ${cart.totalprice}'),
          ),
          body: cart.basketItems.length == 0
              ? Text("no items")
              : ListView.builder(
                  itemCount: cart.basketItems.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                            title: Text(cart.basketItems[index].title),
                            subtitle:
                                Text(cart.basketItems[index].price.toString()),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                cart.remove(cart.basketItems[index]);
                              },
                            )));
                  },
                ));
    });
  }
}
