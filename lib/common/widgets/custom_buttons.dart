import 'package:flutter/material.dart';

class MyCustumButton extends StatelessWidget {
  final String text;
  final VoidCallback Onclick;
  const MyCustumButton({super.key, required this.text, required this.Onclick});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: Onclick,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
      child: Text(text),
    );
  }
}
