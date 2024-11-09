import 'package:app_news/Screens/TeslaScreen.dart';
import 'package:app_news/Screens/businessScreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TeslaScreen(),));
            }, child: Text("Tesla News")),


            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessScreen(),));
            }, child: Text("Business News")),
          ],
        ),
      ),
    );
  }
}