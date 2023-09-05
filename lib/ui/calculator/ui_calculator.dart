// ignore: unused_import
import 'dart:ffi';
import 'package:calories_calculator/ui/calculator/widgets/widgets_calc.dart';
import 'package:flutter/material.dart';

class CalculadoraUI extends StatefulWidget {
  const CalculadoraUI({super.key});

  @override
  State<CalculadoraUI> createState() => _CalculadoraUIState();
}

class _CalculadoraUIState extends State<CalculadoraUI> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String answer = "Respuesta: ";
  double calories = 0.0;

  void _calcular() {
    setState(() {
      double weight = double.parse(_weightController.text);
      double height = double.parse(_heightController.text) / 100;
      int age = int.parse(_ageController.text);

      calories = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
      answer = "${calories.toStringAsFixed(1)} calories minumum";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Mi calculadora de calorías')),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          _sizeSpace(),
          MyTextInput(inputController: _weightController, label: "Peso"),
          MyTextInput(inputController: _heightController, label: "Altura"),
          MyTextInput(inputController: _ageController, label: "Edad"),
          _sizeSpace(),
          MyText(text: answer.toString()),
          _sizeSpace(),
          MyButton(
            lblText: const Text("Calcular"),
            press: (() => _calcular()),
          ),
        ]),
      ),
    );
  }
}

Widget _sizeSpace() {
  return const SizedBox(
    height: 30,
  );
}
