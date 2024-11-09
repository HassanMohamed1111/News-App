import 'package:app_news/Models/businessModel.dart';
import 'package:app_news/Services/businessSrevice.dart';
import 'package:flutter/material.dart';

class BusinessProvider extends ChangeNotifier
{
  Businessmodel?businessmodel;
  GetData()async
  {
    businessmodel = await BusinessService.getData();
    notifyListeners();
  }
}