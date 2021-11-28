import 'package:dio/dio.dart';
import 'package:movies/src/interface/iservice.dart';
import 'package:movies/src/model/movies_model.dart';
import 'package:movies/src/service/client_http_service.dart';
import 'package:movies/src/service/external_service.dart';
import 'package:movies/src/service/local_service.dart';

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
