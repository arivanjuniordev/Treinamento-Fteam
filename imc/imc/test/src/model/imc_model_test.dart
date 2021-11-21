import 'package:flutter_test/flutter_test.dart';
import 'package:imc/src/model/imc_model.dart';

void main() {
  test('Peso maior que 0', () {
    final imcModel = ImcModel(weight: 0, height: 1.75);

    String result = imcModel.calculateImc();

    expect(result, 'Peso tem que ser maior que zero!');
  });
  test('Altura maior que 0', () {
    final imcModel = ImcModel(weight: 83, height: 0);

    String result = imcModel.calculateImc();

    expect(result, 'Altura tem que ser maior que zero!');
  });

  test('Muito abaixo do peso', () {
    final imcModel = ImcModel(weight: 50, height: 1.75);

    String result = imcModel.calculateImc();

    expect(result, 'Muito abaixo do peso');
  });

  test('Peso Normal', () {
    final imcModel = ImcModel(weight: 65, height: 1.95);

    String result = imcModel.calculateImc();

    expect(result, 'Normal');
  });

  test('Sobrepeso', () {
    final imcModel = ImcModel(weight: 60, height: 1.70);

    String result = imcModel.calculateImc();

    expect(result, 'Sobrepeso');
  });

  test('Acima do peso', () {
    final imcModel = ImcModel(weight: 70, height: 1.65);

    String result = imcModel.calculateImc();

    expect(result, 'Acima do peso');
  });

  test('Obesidade I', () {
    final imcModel = ImcModel(weight: 125, height: 2.00);

    String result = imcModel.calculateImc();

    expect(result, 'Obesidade I');
  });

  test('Obesidade II', () {
    final imcModel = ImcModel(weight: 115, height: 1.75);

    String result = imcModel.calculateImc();

    expect(result, 'Obesidade II');
  });

  test('Obesidade III', () {
    final imcModel = ImcModel(weight: 125, height: 1.70);

    String result = imcModel.calculateImc();

    expect(result, 'Obesidade III');
  });
}
