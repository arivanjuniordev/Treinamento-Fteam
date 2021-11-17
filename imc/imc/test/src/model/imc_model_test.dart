import 'package:flutter_test/flutter_test.dart';
import 'package:imc/src/model/imc_model.dart';

void main() {
  test('Calcular Acima do peso', () {
    final imcModel = ImcModel.empty();

    String result = imcModel.calculateImc(weight: 83, height: 1.75);

    expect(result, "Acima do peso");
  });
}
