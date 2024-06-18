import 'package:flutter/material.dart';

class BuildWelcomeText extends StatelessWidget {
  const BuildWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaler;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Welcome to ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: textScaleFactor.scale(20),
            ),
          ),
          TextSpan(
            text: 'admin panel',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: textScaleFactor.scale(20),
            ),
          ),
        ],
      ),
    );
  }
}
