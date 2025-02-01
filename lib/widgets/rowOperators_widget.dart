import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:primeira_aplicacao_flutter/widgets/operator_widget.dart';

class RowOperatorsWidget extends StatelessWidget {
  final Function(String) mudarSinal;
  const RowOperatorsWidget({super.key, required this.mudarSinal});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperatorWidget(
                  sinal: "+", 
                  style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((state) {
                    return Colors.redAccent;
                    })), 
                  icon: Icon(Icons.add), 
                  funcaoMudarFinal: mudarSinal),
                OperatorWidget(
                  sinal: "-", 
                  style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((state) {
                    return Colors.blueAccent;
                    })), 
                  icon: Icon(Icons.remove), 
                  funcaoMudarFinal: mudarSinal),
                OperatorWidget(
                  sinal: "*", 
                  style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((state) {
                    return Colors.yellowAccent;
                    })), 
                  icon: Icon(Icons.close), 
                  funcaoMudarFinal: mudarSinal),
                OperatorWidget(
                  sinal: "/", 
                  style: ButtonStyle(backgroundColor: WidgetStateColor.resolveWith((state) {
                    return Colors.greenAccent;
                    })), 
                  icon: Icon(FontAwesomeIcons.divide), 
                  funcaoMudarFinal: mudarSinal),
              ],
            );
  }
}