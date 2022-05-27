import 'dart:convert';
import 'package:cinema_app/models/film_model.dart';
import 'package:http/http.dart' as http;

class ApiFilm {
  static Future<List<FilmModel>> getAllMovies() async {
    var uri = Uri.https('movies-app1.p.rapidapi.com', '/api/movies');

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "movies-app1.p.rapidapi.com",
      "X-RapidAPI-Key": "0e235a2720msh5958d2502933a91p1d4a10jsn4e240b8a872e",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['results']) {
      _temp.add(i);
    }
    print(_temp);
    return FilmModel.FilmModelFromSnapshot(_temp);
  }
}
