import 'package:flutter/material.dart';
import 'package:validate_cpf/model/cpf_model.dart';

class CpfController {
  final cpf = TextEditingController();

  final _validateCpf = CpfModel();

  bool validateCpf({required String cpf}) {
    return _validateCpf.isValid(cpf);
  }
}
