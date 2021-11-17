import 'package:flutter_test/flutter_test.dart';
import 'package:imc/src/model/imc_model.dart';

void main() {
  test('Calcular Muito abaixo do peso', () {
    final imcModel = ImcModel();

    String result = imcModel.calculateImc(weight: 83, height: 1.75);

    expect(result, "Muito abaixo do peso");
  });
}
