import 'package:flutter/material.dart';

class OperatorWidget extends StatelessWidget {
  final String sinal;
  final Icon icon;
  final ButtonStyle style;
  final Function(String) funcaoMudarFinal;
  const OperatorWidget({super.key, required this.sinal, required this.icon, required this.funcaoMudarFinal, required this.style});

  @override
  Widget build(BuildContext context) {
    return IconButton(
                  icon: icon,
                  style: style,
                  onPressed: () {         
                    funcaoMudarFinal(sinal);
                  },
              );
  }
}