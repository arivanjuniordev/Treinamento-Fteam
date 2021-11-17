import 'package:flutter/material.dart';

import 'conversor_controller.dart';

class ConversorPage extends StatefulWidget {
  const ConversorPage({Key? key}) : super(key: key);

  @override
  _ConversorPageState createState() => _ConversorPageState();
}

class _ConversorPageState extends State<ConversorPage> {
  ConversorController controller = ConversorController();

  @override
  void initState() {
    super.initState();

    controller.valorDolar.text = controller.conversor.cotacaoDolar.toString();
    controller.valorReal.text = controller.conversor.cotacaoReal.toString();
    controller.valorEuro.text = controller.conversor.cotacaoEuro.toString();
  }

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
            TextField(
              controller: controller.valorDolar,
              onChanged: (value) {
                controller.valorReal.text = controller.onChangedReal(value);
                controller.valorEuro.text = controller.onChangedEuro(value);
              },
            ),
            TextField(
              controller: controller.valorReal,
            ),
            TextField(
              controller: controller.valorEuro,
            ),
          ],
        ),
      ),
    );
  }
}
