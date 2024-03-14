import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  const Response({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
      ),
    );
  }
}
