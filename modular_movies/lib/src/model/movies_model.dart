class MoviesModel {
  MoviesModel({
    required this.name,
    required this.age,
  });

  final String name;
  final int age;

  factory MoviesModel.fromMap(Map<String, dynamic> json) => MoviesModel(
        name: json["name"],
        age: json["age"],
      );
}
