import 'package:app_flutter_alcool_ou_gasolina/widgets/button_calculate_widget.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
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
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Compensa utilizar álcool",
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Big Shoulders Display",
                    color: Theme.of(context).primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                ButtonCalculateWidget(
                  label: "CALCULAR NOVAMENTE",
                  fontLabelSize: 20,
                  corFundo: Theme.of(context).primaryColor,
                  corLabel: Colors.white,
                ),
              ],
            ),
          ),
          InputWidget(label: "Gasolina: ", controller: _controllerGasolina),
          InputWidget(label: "Álcool: ", controller: _controllerAlcool),
          ButtonCalculateWidget(
            label: "CALCULAR",
            fontLabelSize: 40,
            corFundo: Colors.white,
            corLabel: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
