import 'package:flutter/material.dart';
import 'package:swipecard/widgets/background_curve_widget.dart';
import 'package:swipecard/widgets/cards_stack_widget.dart';
import 'package:swipecard/widgets/wlecome_overlay.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            WelcomeOverlay(),
            BackgroudCurveWidget(),
            CardsStackWidget(),
          ],
        ),
      ),
    );
  }
}

enum Swipe {
  left,
  right,
  none
}
