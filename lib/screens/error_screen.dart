import 'package:flutter/material.dart';
import '../utilities/font_styles/font_style.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Error', style: headingMedium(tabletH3FontSize)),
            const SizedBox(height: 48,),
            Image.asset('assets/images/error_404.png'),
          ],
        ),
      )
    );
  }
}