class Businessmodel {
  List<dynamic>businessArticles;
  Businessmodel({required this.businessArticles});
  factory Businessmodel.fromjson(Map<String , dynamic>json)
  {
    return Businessmodel(
      businessArticles: json['articles'],
    );
  }
}