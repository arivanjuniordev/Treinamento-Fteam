import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:movies/src/interface/iservice.dart';
import 'package:movies/src/model/movies_model.dart';

class LocalService implements IService {
  @override
  Future<List<MoviesModel>> getMovies() async {
    try {
      String dadoString = await rootBundle.loadString("assets/movies.json");

      List<dynamic> dadosMap = jsonDecode(dadoString);

      return dadosMap
          .map<MoviesModel>((data) => MoviesModel.fromMap(data))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
