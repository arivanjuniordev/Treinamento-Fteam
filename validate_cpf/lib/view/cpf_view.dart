import 'package:flutter/material.dart';
import 'package:validate_cpf/controller/cpf_controller.dart';

class CpfPage extends StatefulWidget {
  const CpfPage({Key? key}) : super(key: key);

  @override
  _CpfPageState createState() => _CpfPageState();
}

class _CpfPageState extends State<CpfPage> {
  final controller = CpfController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            const Text('CPF:'),
            TextField(
              controller: controller.cpf,
            ),
            Text(result),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  controller.validateCpf(cpf: controller.cpf.text)
                      ? result = 'CPF Válido'
                      : result = 'CPF Invalido';
                });
              },
              child: const Text('Validar'),
            )
          ],
        ),
      ),
    );
  }
}
