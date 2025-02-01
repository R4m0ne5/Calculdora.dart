import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/widgets/result_widget.dart';

class ContainerResultWidget extends StatelessWidget {
  final double numeroFinal;
  const ContainerResultWidget({super.key, required this.numeroFinal});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pinkAccent, Colors.orange], 
                begin: Alignment.topLeft, 
                end: Alignment.bottomRight,
              ),
              border: Border.all(width: 4, color: Colors.pinkAccent),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ResultWidget(
              numeroFinal: numeroFinal.toString(),
              decoracao: TextStyle(color: Colors.white, fontSize: 32),
            ),
          );
  }
}