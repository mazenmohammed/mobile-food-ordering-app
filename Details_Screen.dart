import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icon/back.svg'),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset('assets/icon/search.svg'),
                onPressed: () {}),
            IconButton(
              icon: SvgPicture.asset('assets/icon/cart.svg'),
              onPressed: () {},
            )
          ]),
    );
  }
}
