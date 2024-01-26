import 'package:flutter/material.dart';
import 'package:uas_mobile/model/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie selectedMovie;
  const MovieDetail({Key? key, required this.selectedMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path;
    double screenHeight = MediaQuery.of(context).size.height;

    if (selectedMovie.posterPath != null) {
      path = 'https://image.tmdb.org/t/p/w500/${selectedMovie.posterPath}';
    } else {
      path =
          'https://image.freeimages.com/images/large-previews/5eb/movie-clapboard-11844399.jpg';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMovie.title}'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: screenHeight / 1.5,
                child: Image.network(path),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('${selectedMovie.overview}'),
              ),
              Row(
                children: [
                  const SizedBox(width: 16),
                  Text(
                    'Rating : ${selectedMovie.voteAverage}',
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    'Release Date: ${selectedMovie.releaseDate}',
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity, // Make the container full width
                color:
                    Colors.deepOrange[300], // Background color for the footer
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Created by Antonio Eka Wadu Djawa'),
                    Text('NIM : 21201110'),
                  ],
                ),
              ),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}
