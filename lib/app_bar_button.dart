import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.operations,
    required this.opeationsColor,
    required this.description,
    this.onPressed,
  });
  final String operations;
  final Color opeationsColor;
  final String description;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            operations,
            style: TextStyle(
                fontSize: 32,
                fontFamily: 'Menlo',
                fontWeight: FontWeight.bold,
                color: opeationsColor),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
