class FilmModel {
  final String filmImage;
  final String title;
  final String rating;
  final String year;
  final String description;
  final String genres;
  final String countries;
  final String sortie;
  final String lien;

  FilmModel(
      {required this.filmImage,
      required this.title,
      required this.rating,
      required this.year,
      required this.description,
      required this.genres,
      required this.countries,
      required this.sortie,
      required this.lien});

  factory FilmModel.fromJson(dynamic json) {
    return FilmModel(
      filmImage: json['image'] as String,
      title: json['titleOriginal'] as String,
      rating: json['rating'] as String,
      year: json['year'] as String,
      description: json['description'] as String,
      genres: json['genres'][0]['name'] as String,
      countries: json['countries'][0]['name'] as String,
      sortie: json['release'] as String,
      lien: json['embedUrls'][3]['url'] as String,
    );
  }

  static List<FilmModel> FilmModelFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return FilmModel.fromJson(data);
    }).toList();
  }
}
