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
