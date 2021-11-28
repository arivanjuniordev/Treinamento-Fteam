import 'package:movies/src/model/movies_model.dart';

abstract class IService {
  Future<List<MoviesModel>> getMovies();
}
