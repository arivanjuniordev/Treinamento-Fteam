class ImcModel {
  final double weight;
  final double height;

  ImcModel({required this.weight, required this.height});

  String calculateImc({required double weight, required double height}) {
    double result = weight / (height * height);

    if (result < 17) {
      return 'Muito abaixo do peso';
    } else if (result >= 17 && result <= 18.49) {
      return 'Normal';
    } else if (result >= 18.5 && result <= 24.99) {
      return 'Sobrepeso';
    } else if (result >= 25 && result <= 29.99) {
      return 'Acima do peso';
    } else if (result >= 30 && result <= 34.99) {
      return 'Obesidade I';
    } else if (result >= 35 && result <= 39.99) {
      return 'Obesidade II';
    } else {
      return 'Obesidade III';
    }
  }
}
