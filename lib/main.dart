import 'package:app_news/Providers/TeslaProvider.dart';
import 'package:app_news/Providers/businessProvider.dart';
import 'package:app_news/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Teslaprovider(),),
        ChangeNotifierProvider(create: (context) => BusinessProvider(),),
      ],
      child: MaterialApp(
        home: Homepage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}