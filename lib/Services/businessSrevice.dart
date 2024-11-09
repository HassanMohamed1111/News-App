import 'package:app_news/Models/businessModel.dart';
import 'package:dio/dio.dart';

class BusinessService {
 static Dio dio = Dio();
 static Future<Businessmodel>getData()async
 {
  try{
  Response response = await dio.get(
    'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f657d433b6d54f47a0c519a89ef56105'
  );
  if(response.statusCode==200)
  {
    return Businessmodel.fromjson(response.data);
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