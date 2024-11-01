
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(8)),
      child: const Center(
        child: Text(
          'Save',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
