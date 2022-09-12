import 'package:conversor_de_moeda_com_flutter/app/controllers/home_controller.dart';
import 'package:conversor_de_moeda_com_flutter/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText, fromText);

  test('Deve converter de real para dolar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.38');
  });

  test('Deve converter de dolar para real', () {
    toText.text = '1,0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.15, dolar: 1.0, euro: 0.98, bitcoin: 0.000088);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.19, euro: 0.19, bitcoin: 0.000016);
    homeController.convert();
    expect(fromText.text, '5.15');
  });
}
