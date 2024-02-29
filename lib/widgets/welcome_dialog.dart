import 'package:flutter/material.dart';

class WelcomeDialog extends StatefulWidget {
  final VoidCallback onOkPressed;

  const WelcomeDialog({Key? key, required this.onOkPressed}) : super(key: key);

  @override
  _WelcomeDialogState createState() => _WelcomeDialogState();
}

class _WelcomeDialogState extends State<WelcomeDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('¡Bienvenido!'),
      content: const Text('¿Listo para hacer match con tu casa ideal?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Cierra el diálogo
            widget.onOkPressed(); // Ejecuta la acción al presionar "OK"
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
