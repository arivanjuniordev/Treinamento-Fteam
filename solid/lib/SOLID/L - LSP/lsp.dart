/*
L - é o terceiro princípio
LSP - Liskov’s Substitution Principle
Tradução - Princípio da substituição de Liskov

"objetos em um programa devem ser substituíveis por instâncias de seus subtipos,
 sem alterar a funcionalidade do programa." deve ser capaz de afetar apenas 
 a especificação da classe

*/

abstract class Payment {
  double valor = 0;

  Payment({required double valor});

  String pay({required double value});
  String payBoleto({required double value});
}

class PaymentPix extends Payment {
  PaymentPix() : super(valor: 10);

  @override
  String pay({required double value}) {
    return 'Pagando com o pix $valor';
  }

  @override
  String payBoleto({required double value}) {
    throw Exception('Pix não pode fazer');
  }
}
