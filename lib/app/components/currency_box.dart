// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CurrencyBox extends StatefulWidget {
  const CurrencyBox({Key? key}) : super(key: key);

  @override
  State<CurrencyBox> createState() => _CurrencyBoxState();
}

class _CurrencyBoxState extends State<CurrencyBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 22.0, right: 8.0),
                child: DropdownButton<double>(
                  icon: const Icon(Icons.currency_exchange_outlined),
                  iconEnabledColor: Colors.amber,
                  underline: Container(height: 1, color: Colors.amber),
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Real'),
                    ),
                    DropdownMenuItem(
                      value: 1,
                      child: Text('Dolar'),
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                  },
                ),
              )),
          const Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Value',
                    iconColor: Colors.amber,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber))),
              )),
          const Spacer(),
        ]);
  }
}
