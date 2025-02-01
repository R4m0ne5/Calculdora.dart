import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  final String numeroFinal;
  final TextStyle decoracao;
  const ResultWidget({super.key, required this.numeroFinal, required this.decoracao});

  @override
  Widget build(BuildContext context) {
    return Text(
              numeroFinal,
              style: decoracao,
            );
  }
}