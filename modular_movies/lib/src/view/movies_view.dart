import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_movies/src/controller/movies_controller.dart';
import 'package:modular_movies/src/model/movies_model.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  _MoviesViewState createState() => _MoviesViewState();
}

class _MoviesViewState extends ModularState<MoviesView, MoviesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              await controller.getMovies();
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: controller.getMovies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: controller.movies.length,
              itemBuilder: (context, index) {
                MoviesModel movie = controller.movies[index];
                return ListTile(
                  title: Text(
                    movie.name,
                  ),
                  trailing: Text(movie.age.toString()),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
