/*
I - é o quarto princípio
ISP - Interface Segregation Principle
Tradução - Princípio da segregação de Interface

"muitas interfaces de clientes específicas, são melhores do que uma 
para todos propósitos."

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
