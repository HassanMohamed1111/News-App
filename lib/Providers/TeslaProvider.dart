import 'package:app_news/Models/TeslaModel.dart';
import 'package:app_news/Services/TeslaService.dart';
import 'package:flutter/material.dart';

class Teslaprovider extends ChangeNotifier
{
  Teslamodel?teslamodel;
  GetData()async
  {
    teslamodel = await TeslaService.getData();
    notifyListeners();
  }
}