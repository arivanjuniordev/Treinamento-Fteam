import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies/src/controller/movies_controller.dart';
import 'package:movies/src/interface/iservice.dart';
import 'package:movies/src/service/client_http_service.dart';
import 'package:movies/src/view/movies_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<Dio>(
        //   create: (_) => Dio(),
        //   lazy: true,
        // ),
        // Provider<ClientHttpService>(
        //   create: (_) => ClientHttpService(
        //     dio: Provider.of<Dio>(_),
        //   ),
        //   lazy: true,
        // ),
        // Provider<MoviesController>(
        //   create: (_) => MoviesController(
        //     service: Provider.of<ClientHttpService>(_),
        //   ),
        //   lazy: true,
        // ),
        Provider<MoviesController>(
          create: (_) => MoviesController(
            service: ClientHttpService(
              dio: Dio(),
            ),
          ),
          lazy: true,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MoviesView(),
      ),
    );
  }
}
