/*
D - é o quinto princípio
DIP - Dependency Inversion Principle
Tradução - Princípio da inversão de dependência

"deve-se depender de abstrações, não de objetos concretos."

*/

abstract class IPayment {
  String pay();
}

abstract class IPaymentJuros {
  String payJuros();
}

class PaymentPix implements IPayment, IPaymentJuros {
  @override
  String pay() {
    return 'Pagando com o pix';
  }

  @override
  String payJuros() {
    return 'pagando juros';
  }
}

void main(List<String> args) {
  // ignore: unused_local_variable
  IPayment paymentPix = PaymentPix();
}

void main2(List<String> args) {
  // ignore: unused_local_variable
  PaymentPix paymentPix = PaymentPix();
}
