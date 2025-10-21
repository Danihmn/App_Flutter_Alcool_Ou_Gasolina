import 'package:app_flutter_alcool_ou_gasolina/widgets/text_button_widget.dart';
import 'package:app_flutter_alcool_ou_gasolina/widgets/input_widget.dart';
import 'package:app_flutter_alcool_ou_gasolina/widgets/logo_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final TextEditingController _controllerGasolina = TextEditingController();
  final TextEditingController _controllerAlcool = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          LogoWidget(),
          InputWidget(label: "Gasolina: ", controller: _controllerGasolina),
          InputWidget(label: "Álcool: ", controller: _controllerAlcool),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            padding: EdgeInsets.all(10),
            child: TextButtonWidget(calcular: "CALCULAR"),
          ),
        ],
      ),
    );
  }
}
