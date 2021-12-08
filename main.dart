import 'dart:js';

import 'package:flutter/material.dart';
import 'package:foodapp/Screens/home-screens/cart.dart';
import 'package:foodapp/Screens/home-screens/welcome-page.dart';
import 'constants.dart';
import 'Screens/menu/sidemenu.dart';
import 'package:foodapp/Screens/LoginPage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => cart()),
    ]),
    child: MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => WelcomePage(),
        '/Login': (context) => LoginPage(),
        '/Logout': (context) => Logout(),
        '/HomePage': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: KPrimaryColor),
          bodyText2: TextStyle(color: KsecondColor),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
