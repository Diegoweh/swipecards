import 'package:flutter/material.dart';
import 'package:swipecard/widgets/welcome_dialog.dart';

class WelcomeOverlay extends StatelessWidget {
  const WelcomeOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        builder: (context) => WelcomeDialog(
          onOkPressed: () {
            // Coloca aquí la lógica que quieras ejecutar después de presionar "OK"
          },
        ),
      );
    });

    return SizedBox.shrink(); // Un widget vacío para ocupar espacio mínimo
  }
}
