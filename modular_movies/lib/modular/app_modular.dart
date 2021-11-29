import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_movies/src/controller/movies_controller.dart';
import 'package:modular_movies/src/service/client_http_service.dart';

import 'package:modular_movies/src/view/movies_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => Dio()),
        Bind.factory((i) => ClientHttpService(dio: i())),
        Bind.factory((i) => MoviesController(service: i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const MoviesView(),
        ),
      ];
}
