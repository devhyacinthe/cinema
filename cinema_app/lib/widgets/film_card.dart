import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  final String filmImage;
  final String title;
  final String rating;
  final String year;
  final String description;
  final List<String> genres;
  final List<String> countries;
  final String sortie;
  final String lien;

  const FilmCard(
      {Key? key,
      required this.filmImage,
      required this.title,
      required this.rating,
      required this.year,
      required this.description,
      required this.genres,
      required this.countries,
      required this.sortie,
      required this.lien})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 12,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2020/05/12/12/11/tulip-5162642_960_720.jpg")),
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [Text("hello"), Text("he")],
            )
          ],
        ),
      ),
    );
  }
}
