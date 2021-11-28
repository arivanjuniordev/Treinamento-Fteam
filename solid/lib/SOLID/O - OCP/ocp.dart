/*
O - é o segundo princípio
OCP - Open/Closed Principle
Tradução - Princípio de aberto/fechado

as classes devem ser abertas para extensão, 
mas fechadas para modificação.

*/

abstract class Payment {
  double valor = 0;

  Payment({required double valor});

  String pay({required double value});
}

class PaymentPix extends Payment {
  PaymentPix() : super(valor: 10);

  @override
  String pay({required double value}) {
    return 'Pagando $valor';
  }

  String payPix() {
    return 'Pagando pix';
  }
}

class Payment2 extends Payment {
  Payment2({required double valor}) : super(valor: 20);
  @override
  String pay({required double value}) {
    return 'pay1';
  }

  String pay2({required double value}) {
    return 'pay2';
  }
}
