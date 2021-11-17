import 'package:conversor/mvc/conversor_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Cotacao do dolar em real', () {
    final converso = ConversorModel(
      cotacaoDolar: 1,
      cotacaoReal: 5.50,
      cotacaoEuro: 0.88,
    );

    final result = converso.convertValue(
      valor: 2,
      cotacaoValor: converso.cotacaoDolar,
      typeMoedaForConvertion: TypeMoeda.real,
    );

    expect(result, 11.0);
  });

  test('Cotacao do dolar em euro', () {
    final converso = ConversorModel(
      cotacaoDolar: 1,
      cotacaoReal: 5.50,
      cotacaoEuro: 0.88,
    );

    final result = converso.convertValue(
      valor: 2,
      cotacaoValor: converso.cotacaoDolar,
      typeMoedaForConvertion: TypeMoeda.euro,
    );

    expect(result, 1.76);
  });
}
