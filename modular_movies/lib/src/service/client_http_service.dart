import 'package:dio/dio.dart';
import 'package:modular_movies/src/interface/iservice.dart';
import 'package:modular_movies/src/model/movies_model.dart';
import 'package:modular_movies/src/utils.dart';

class ClientHttpService implements IService {
  ClientHttpService({required this.dio});

  final Dio dio;

  @override
  Future<List<MoviesModel>> getMovies() async {
    try {
      Response response = await dio.get(server);
      if (response.statusCode == 200) {
        return response.data
            .map<MoviesModel>((data) => MoviesModel.fromMap(data))
            .toList();
      }

      return [];
    } catch (e) {
      rethrow;
    }
  }
}
