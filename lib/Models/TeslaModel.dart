class Teslamodel {
  List<dynamic>teslaarticles;
  Teslamodel({required this.teslaarticles});
  factory Teslamodel.fromjson(Map<String , dynamic>json)
  {
    return Teslamodel(
      teslaarticles: json['articles'],
    );
  }
}