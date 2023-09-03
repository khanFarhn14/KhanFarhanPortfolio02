import 'package:flutter/material.dart';

const _boldMessage = "Greetings End users,\nWelcome to my portfolio!";
const _message = "I specialize in creating stunning mobile applications that not only look great but also deliver an exceptional user experience.";

class Greetings extends StatelessWidget {
  final TextStyle textHeadingStyle;
  final TextStyle textMessageStyle;
  const Greetings({super.key, required this.textHeadingStyle, required this.textMessageStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          _boldMessage,style: textHeadingStyle
        ),

        const SizedBox(height: 12),
        
        SelectableText(
          _message, style: textMessageStyle
        ),
      ],
    );
  }
}