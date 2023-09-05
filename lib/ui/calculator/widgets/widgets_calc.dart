import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    required this.inputController,
    required this.label,
  });

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70),
      child: TextFormField(
        controller: inputController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          prefixIcon: Icon(Icons.question_mark_outlined),
          labelStyle: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  MyText({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black87, fontSize: 17, fontWeight: FontWeight.bold),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.lblText, required this.press});

  final Text lblText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500)),
      child: lblText,
    );
  }
}
