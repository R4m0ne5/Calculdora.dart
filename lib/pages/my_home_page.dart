import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var valor1InputController = TextEditingController();
  var valor2InputController = TextEditingController();
  String operacao = "+";
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple, // Cor alterada
        title: Text(widget.title, style: TextStyle(color: Colors.white)), // Texto branco
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: valor1InputController,
              decoration: InputDecoration(
                labelText: "Valor 1",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: valor2InputController,
              decoration: InputDecoration(
                labelText: "Valor 2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildOperationButton("+", Colors.blue),
                _buildOperationButton("-", Colors.green),
                _buildOperationButton("*", Colors.orange),
                _buildOperationButton("/", Colors.red),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: calcular,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Cor alterada
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: Text('Calcular', style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 32),
            Text(
              'Resultado: $resultado',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOperationButton(String operador, Color color) {
    return ElevatedButton(
      onPressed: () => atualizarOperador(operador),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Text(
        operador,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }

  void calcular() {
    double valor1 = double.tryParse(valor1InputController.text) ?? 0;
    double valor2 = double.tryParse(valor2InputController.text) ?? 0;

    setState(() {
      switch (operacao) {
        case "+":
          resultado = valor1 + valor2;
          break;
        case "-":
          resultado = valor1 - valor2;
          break;
        case "*":
          resultado = valor1 * valor2;
          break;
        case "/":
          resultado = valor2 != 0 ? valor1 / valor2 : 0;
          break;
        default:
          resultado = 0;
      }
    });
  }

  void atualizarOperador(String operador) {
    setState(() {
      operacao = operador;
    });
  }
}