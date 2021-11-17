class ConversorModel {
  final double cotacaoDolar;
  final double cotacaoReal;
  final double cotacaoEuro;

  ConversorModel({
    required this.cotacaoDolar,
    required this.cotacaoReal,
    required this.cotacaoEuro,
  });

  double convertValue({
    required double valor,
    required TypeMoeda typeMoedaForConvertion,
    required double cotacaoValor,
  }) {
    switch (typeMoedaForConvertion) {
      case TypeMoeda.real:
        return valor * (cotacaoReal / cotacaoValor);
      case TypeMoeda.euro:
        return valor * (cotacaoEuro / cotacaoValor);
      case TypeMoeda.dolar:
        return valor * (cotacaoDolar / cotacaoValor);
    }
  }
}

enum TypeMoeda {
  dolar,
  real,
  euro,
}
