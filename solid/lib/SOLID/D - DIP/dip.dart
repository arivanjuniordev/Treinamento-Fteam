/*
D - é o quinto princípio
DIP - Dependency Inversion Principle
Tradução - Princípio da inversão de dependência

"deve-se depender de abstrações, não de objetos concretos."

*/

abstract class IPayment {
  String pay();
}

abstract class IPaymentPix {
  String payPix();
}

class PaymentPix implements IPayment, IPaymentPix {
  @override
  String pay() {
    return 'Pagando com o pix';
  }

  @override
  String payPix() {
    return 'pagando juros';
  }
}

class Paymentboleto implements IPayment {
  @override
  String pay() {
    return 'Pagando com o pix';
  }
}

void main(List<String> args) {
  IPayment paymentPix = PaymentPix();
}
