import 'package:cinema_app/colors/app_colors.dart';
import 'package:cinema_app/widgets/film_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../providers/film_provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    FilmProvider filmProvider =
        Provider.of<FilmProvider>(context, listen: false);
    filmProvider.getFilms();

    return Scaffold(
        backgroundColor: AppColors.backgroundApp,
        appBar: AppBar(
          excludeHeaderSemantics: true,
          toolbarHeight: 64,
          centerTitle: true,
          title: Text("All Movie",
              style: GoogleFonts.lato(
                fontSize: 20,
              )),
          elevation: 0,
          backgroundColor: AppColors.backgroundApp,
        ),
        body: Consumer<FilmProvider>(builder: (context, value, child) {
          return filmProvider.getIsLoading
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: filmProvider.getListFilms.length,
                  itemBuilder: (((context, index) {
                    return FilmCard(
                        filmImage: value.getListFilms[index].filmImage,
                        title: value.getListFilms[index].title,
                        rating: value.getListFilms[index].rating,
                        year: value.getListFilms[index].year,
                        description: value.getListFilms[index].description,
                        genres: value.getListFilms[index].genres,
                        countries: value.getListFilms[index].countries,
                        sortie: value.getListFilms[index].sortie,
                        lien: value.getListFilms[index].lien);
                  })));
        }));
  }
}
