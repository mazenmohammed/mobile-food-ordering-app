import 'package:flutter/material.dart';
import 'package:foodapp/Screens/home-screens/Item.dart';
import 'package:foodapp/Screens/home-screens/cart.dart';
import 'package:foodapp/Screens/checkout.dart';
import 'package:foodapp/Screens/home-screens/cart.dart';

class CartWidget extends StatefulWidget {
  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {



  final List<Item> items = [
    Item( title: , price: 50),
    Item( title: , price: 50),
    Item( title: , price: 50),


  ];





  @override
  Widget build(BuildContext context) {
    var icons;
    return Scaffold(
    appBar: AppBar(
       
      actions: <Widget>[
        Row(
          children:<Widget> [
            SafeArea(child: ElevatedButton.icon(
        onPressed:(){
          Navigator.pushNamed(context, '/second')
          },
        icon: Icon(icons.arrow_back),
        label: Text('Navigate to the next Screen'),
      ),),
           IconButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(
               builder:(context)=> CheckOutPage()));;

           }, icon: Icon(Icons.shopping_cart),color: Colors.white,)
           ,Text(cart.count.toString())


          ],
        )
      ],
      title: Text("your orders"),
      
    centerTitle: true,),
    body: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return ListTile(
   title: Text(items[index].title),
   trailing: Icon(Icons.add),
   onTap: (){
     cart.add(items[index]);
   },
        );
      },
      ),
    );



  }
}
