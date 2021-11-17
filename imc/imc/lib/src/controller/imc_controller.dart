import 'package:flutter/cupertino.dart';
import 'package:imc/src/model/imc_model.dart';

class ImcController {
  final weight = TextEditingController();
  final height = TextEditingController();

  final _imcModel = ImcModel.empty();

  String calculateImc() {
    return _imcModel.calculateImc(
      weight: double.parse(weight.text),
      height: double.parse(height.text),
    );
  }
}
