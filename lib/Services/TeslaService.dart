import 'package:app_news/Models/TeslaModel.dart';
import 'package:dio/dio.dart';

class TeslaService {
 static Dio dio = Dio();
 static Future<Teslamodel>getData()async
 {
  try{
  Response response = await dio.get(
    'https://newsapi.org/v2/everything?q=tesla&from=2024-10-09&sortBy=publishedAt&apiKey=f657d433b6d54f47a0c519a89ef56105'
  );
  if(response.statusCode==200)
  {
    return Teslamodel.fromjson(response.data);
  }
  else
  {
    throw Exception("Error");
  }
  }catch(e)
  {
    print("The Error is $e");
    throw Exception("The Error is $e");
  }
 }
}