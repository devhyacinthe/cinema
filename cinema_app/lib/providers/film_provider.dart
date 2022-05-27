import 'package:cinema_app/models/film_model.dart';
import 'package:cinema_app/services/api_film.dart';
import 'package:flutter/cupertino.dart';

class FilmProvider extends ChangeNotifier {
  List<FilmModel> _films = [];
  bool _isloading = true;

  bool get getIsLoading => _isloading;
  List<FilmModel> get getListFilms => _films;

  Future<void> getFilms() async {
    _films = await ApiFilm.getAllMovies();
    _isloading = false;
    notifyListeners();
  }
}
