import 'package:dio/dio.dart';
import 'package:movies/src/interface/iservice.dart';
import 'package:movies/src/model/movies_model.dart';
import 'package:movies/src/utils.dart';

class ExternalService implements IService {
  @override
  Future<List<MoviesModel>> getMovies() async {
    final Dio _dio = Dio();

    try {
      Response response = await _dio.get(server);
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
