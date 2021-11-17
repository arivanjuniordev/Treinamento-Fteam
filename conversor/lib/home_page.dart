import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? valorDolar = TextEditingController(text: '1');
    TextEditingController? valorReal = TextEditingController(text: '5.46');
    TextEditingController? valorEuro = TextEditingController(text: '0.88');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            TextField(
              controller: valorDolar,
              onChanged: (valor) {
                valorReal.text =
                    (double.parse(valorDolar.text) * double.parse("5.46"))
                        .toString();

                valorEuro.text =
                    (double.parse(valorDolar.text) * double.parse("0.88"))
                        .toString();
              },
            ),
            TextField(
              controller: valorReal,
              onChanged: (valor) {
                valorDolar.text =
                    (double.parse(valorReal.text) * double.parse("5.46"))
                        .toString();

                valorEuro.text =
                    (double.parse(valorReal.text) * double.parse("6.21"))
                        .toString();
              },
            ),
            TextField(
              controller: valorEuro,
              onChanged: (valor) {
                valorReal.text =
                    (double.parse(valorEuro.text) * double.parse("6.21"))
                        .toString();

                valorDolar.text =
                    (double.parse(valorDolar.text) * double.parse("0.88"))
                        .toString();
              },
            ),
          ],
        ),
      ),
    );
  }
}
