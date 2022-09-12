class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({required this.name, required this.real, required this.dolar, required this.euro, required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.19, euro: 0.19, bitcoin: 0.000016),
      CurrencyModel(
          name: 'Dolar', real: 5.15, dolar: 1.0, euro: 0.98, bitcoin: 0.000088),
      CurrencyModel(
          name: 'Euro', real: 5.23, dolar: 1.02, euro: 1.0, bitcoin: 0.000010),
      CurrencyModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.30,
          euro: 9689.54,
          bitcoin: 1.0),
    ];
  }
}

