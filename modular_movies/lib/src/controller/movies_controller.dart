import 'package:modular_movies/src/interface/iservice.dart';
import 'package:modular_movies/src/model/movies_model.dart';

class MoviesController {
  MoviesController({required this.service});

  IService service;

  //IService service = ExternalService();

  //IService service = LocalService();

  List<MoviesModel> movies = [];

  Future<List<MoviesModel>> getMovies() async {
    try {
      await Future.delayed(const Duration(seconds: 3));

      movies = await service.getMovies();

      return movies;
    } catch (e) {
      rethrow;
    }
  }
}
