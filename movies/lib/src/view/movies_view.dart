import 'package:flutter/material.dart';
import 'package:movies/src/controller/movies_controller.dart';
import 'package:movies/src/model/movies_model.dart';
import 'package:movies/src/service/client_http_service.dart';
import 'package:provider/provider.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  _MoviesViewState createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  @override
  Widget build(BuildContext context) {
    MoviesController moviesController = Provider.of<MoviesController>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              await moviesController.getMovies();
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: moviesController.getMovies(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: moviesController.movies.length,
              itemBuilder: (context, index) {
                MoviesModel movie = moviesController.movies[index];
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
