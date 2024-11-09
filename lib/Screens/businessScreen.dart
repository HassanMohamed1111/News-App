import 'package:app_news/Providers/businessProvider.dart';
import 'package:app_news/Widget/CustomeWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Business News"),
      ),
      body: Center(
        child: Consumer<BusinessProvider>(
          builder: (context, value, child) {
            var modelOfNews = value.businessmodel;
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
                  return CustomeText(urlImage: modelOfNews.businessArticles[index]['urlToImage']??"No Image", title: modelOfNews.businessArticles[index]['title']??"No Title", descreption: modelOfNews.businessArticles[index]['description']??"No Descreption");
                },
                itemCount: modelOfNews.businessArticles.length,
              );
            }
          },
        ),
      ),
    );
  }
}