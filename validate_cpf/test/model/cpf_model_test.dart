import 'package:flutter_test/flutter_test.dart';
import 'package:validate_cpf/model/cpf_model.dart';

void main() {
  test('Validate CPF', () {
    final validateCpf = CpfModel(cpf: '0');

    bool validate = validateCpf.isValid('08723809477');

    expect(validate, true);
  });

  test('Invalidate CPF', () {
    final validateCpf = CpfModel(cpf: '0');

    bool validate = validateCpf.isValid('08723809474');

    expect(validate, false);
  });
}
