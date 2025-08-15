import 'package:flutter/material.dart';

class CustumTextfield extends StatelessWidget {
  final TextEditingController controller;
  const CustumTextfield({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
      validator: (val) {},
    );
  }
}
