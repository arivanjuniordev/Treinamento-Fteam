import 'package:flutter/material.dart';
import 'package:imc/src/controller/imc_controller.dart';

class ImcView extends StatefulWidget {
  const ImcView({Key? key}) : super(key: key);

  @override
  _ImcViewState createState() => _ImcViewState();
}

class _ImcViewState extends State<ImcView> {
  final controller = ImcController();

  String result = 'Digite para Calucar o IMC!';

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
            const Text('Weight'),
            TextField(
              controller: controller.weight,
            ),
            const Text('Height'),
            TextField(
              controller: controller.height,
            ),
            Text(result),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = controller.calculateImc();
                });
              },
              child: const Text('Calcular'),
            )
          ],
        ),
      ),
    );
  }
}
