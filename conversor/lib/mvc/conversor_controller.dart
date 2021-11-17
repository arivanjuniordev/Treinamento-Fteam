import 'package:flutter/material.dart';

import 'conversor_model.dart';

class ConversorController {
  final valorDolar = TextEditingController();
  final valorReal = TextEditingController();
  final valorEuro = TextEditingController();

  final conversor = ConversorModel(
    cotacaoDolar: 1,
    cotacaoReal: 5.50,
    cotacaoEuro: 0.88,
  );

  String onChangedReal(String valor) {
    return conversor
        .convertValue(
          valor: double.parse(valor),
          cotacaoValor: conversor.cotacaoDolar,
          typeMoedaForConvertion: TypeMoeda.real,
        )
        .toString();
  }

  String onChangedEuro(String valor) {
    return conversor
        .convertValue(
          valor: double.parse(valor),
          cotacaoValor: conversor.cotacaoDolar,
          typeMoedaForConvertion: TypeMoeda.euro,
        )
        .toString();
  }
}
