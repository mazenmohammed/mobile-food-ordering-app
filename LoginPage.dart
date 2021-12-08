import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akilna',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        TextField(
          decoration: InputDecoration(
              filled: true, // To set background to light grey
              hintText: "Username",
              border: OutlineInputBorder()),
        ),
        TextField(
          decoration: InputDecoration(
              filled: true, hintText: "Password", border: OutlineInputBorder()),
        ),
        ButtonBar(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              onPressed: () {},
              child: Text("Sign in"),
            )
          ],
        )
      ],
    );
  }
}
