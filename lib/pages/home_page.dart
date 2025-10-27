import 'package:app_flutter_alcool_ou_gasolina/widgets/loading_button_widget.dart';
import 'package:app_flutter_alcool_ou_gasolina/widgets/logo_widget.dart';
import 'package:app_flutter_alcool_ou_gasolina/widgets/submit_form.dart';
import 'package:flutter/material.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gasolineController = MoneyMaskedTextController();
  final _alcoholController = MoneyMaskedTextController();
  bool _busy = false;
  bool _completed = false;
  String _resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 1200),
        color: Theme
            .of(context)
            .primaryColor,
        child: ListView(
          children: <Widget>[
            const LogoWidget(),
            _completed
                ? Container(
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    _resultText,
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Big Shoulders Display",
                      color: Theme
                          .of(context)
                          .primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  LoadingButtonWidget(
                    busy: false,
                    invert: true,
                    label: "CALCULAR NOVAMENTE",
                    fontLabelSize: 20,
                    onPressed: () {
                      setState(() {
                        _completed = false;
                      });
                    },
                  ),
                ],
              ),
            )
                : SubmitForm(
              gasolineController: _gasolineController,
              alcoholController: _alcoholController,
              busy: _busy,
              submitFunction: _calculate,
            ),
          ],
        ),
      ),
    );
  }

  Future _calculate() async {
    double alcohol =
        double.parse(_alcoholController.text.replaceAll(RegExp(r'[,.]'), '')) /
            100;
    double gasoline =
        double.parse(_gasolineController.text.replaceAll(RegExp(r'[,.]'), '')) /
            100;
    double result = alcohol / gasoline;

    setState(() {
      _busy = true;
    });

    return Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (result >= 0.7) {
          _resultText = "Compensa utilizar Gasolina!";
        } else {
          _resultText = "Compensa utilizar Álcool!";
        }
        _busy = false;
        _completed = true;
      });
    });
  }
}
