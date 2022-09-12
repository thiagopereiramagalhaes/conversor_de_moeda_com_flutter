// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:conversor_de_moeda_com_flutter/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 10,
                child: SizedBox(
                  width: 130,
                  height: 130,
                  child: Image.network(
                      'https://cdn.iconscout.com/icon/free/png-256/currency-2712359-2261340.png'),
                ),
              ),
              const Spacer(),
              CurrencyBox(),
              const Spacer(),
              CurrencyBox(),
              const Spacer(),
              Flexible(
                flex: 10,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                    child: const Text('Exchange'),
                    onPressed: () {
                      print(true);
                    }),
              )
            ]),
      ),
    );
  }
}
