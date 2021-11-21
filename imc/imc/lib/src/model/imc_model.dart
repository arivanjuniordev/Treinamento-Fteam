class ImcModel {
  final double weight;
  final double height;

  ImcModel({
    required this.weight,
    required this.height,
  });

  String calculateImc() {
    double resultCalculate = weight / (height * height);

    String result = '';

    if (weight < 1) {
      return 'Peso tem que ser maior que zero!';
    }

    if (height < 1) {
      return 'Altura tem que ser maior que zero!';
    }

    if (resultCalculate < 17) {
      result = 'Muito abaixo do peso';
    } else if (resultCalculate >= 17 && resultCalculate <= 18.49) {
      result = 'Normal';
    } else if (resultCalculate >= 18.5 && resultCalculate <= 24.99) {
      result = 'Sobrepeso';
    } else if (resultCalculate >= 25 && resultCalculate <= 29.99) {
      result = 'Acima do peso';
    } else if (resultCalculate >= 30 && resultCalculate <= 34.99) {
      result = 'Obesidade I';
    } else if (resultCalculate >= 35 && resultCalculate <= 39.99) {
      result = 'Obesidade II';
    } else {
      result = 'Obesidade III';
    }

    return result;
  }
}
