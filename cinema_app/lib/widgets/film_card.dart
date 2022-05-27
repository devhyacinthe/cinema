import 'package:cinema_app/colors/app_colors.dart';
import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  final String filmImage;
  final String title;
  final String rating;
  final String year;
  final String description;
  final String genres;
  final String countries;
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
      padding: const EdgeInsets.all(6),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        clipBehavior: Clip.antiAlias,
        color: AppColors.backgroundApp,
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(filmImage)),
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(
              height: 17,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(title, style: const TextStyle(color: Colors.white))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
