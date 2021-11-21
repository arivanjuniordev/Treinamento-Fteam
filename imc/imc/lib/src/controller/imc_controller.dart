import 'package:flutter/cupertino.dart';
import 'package:imc/src/model/imc_model.dart';

class ImcController {
  final weight = TextEditingController();
  final height = TextEditingController();
  String result = 'Digite para Calucar o IMC!';

  String calculateImc() {
    final _imcModel = ImcModel(
      weight: double.parse(weight.text),
      height: double.parse(height.text),
    );

    return _imcModel.calculateImc();
  }
}
