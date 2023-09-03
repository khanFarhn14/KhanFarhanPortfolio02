import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final double paddingHorizontal;
  const CenteredView({super.key, required this.child, required this.paddingHorizontal});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal, 
        vertical: 0
      ),
      alignment: Alignment.topCenter,
      child: child
    );
  }
}