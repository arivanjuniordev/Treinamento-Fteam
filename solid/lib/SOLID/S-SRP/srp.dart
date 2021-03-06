/*
S - é o primeiro princípio
SRP - Single-responsibility principle
Tradução - Princípio de única responsabilidade

Uma classe deve ter apenas uma única responsabilidade.

*/

class Payment {
  late final double valor;

  Payment({required double valor});

  pay({required double value}) {
    // ignore: avoid_print
    print('pay');
  }
}

class Payment2 {
  late final double valor;

  Payment2({required double valor});

  pay({required double value}) {
    // ignore: avoid_print
    print('pay');
  }

  saveBanco() {
    // ignore: avoid_print
    print('salando');
  }
}
