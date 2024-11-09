import 'package:app_news/Providers/TeslaProvider.dart';
import 'package:app_news/Widget/CustomeWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TeslaScreen extends StatelessWidget {
  const TeslaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tesla News"),
      ),
      body: Center(
        child: Consumer<Teslaprovider>(
          builder: (context, value, child) {
            var modelOfNews = value.teslamodel;
            if(modelOfNews == null)
            {
              value.GetData();
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            else
            {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return CustomeText(urlImage: modelOfNews.teslaarticles[index]['urlToImage']??"No Image", title: modelOfNews.teslaarticles[index]['title']??"No Title", descreption: modelOfNews.teslaarticles[index]['description']??"No Descreption");
                },
                itemCount: modelOfNews.teslaarticles.length,
              );
            }
          },
        ),
      ),
    );
  }
}