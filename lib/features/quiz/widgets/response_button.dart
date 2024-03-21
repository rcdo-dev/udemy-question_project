import 'package:flutter/material.dart';

class ResponseButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;

  const ResponseButton({
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
