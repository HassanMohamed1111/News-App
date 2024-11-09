import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
final String urlImage;
final String title;
final String descreption;
CustomeText({required this.urlImage , required this.title , required this.descreption});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Image.network(urlImage),
            Text(title , 
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(descreption),
          ],
        );
  }
}