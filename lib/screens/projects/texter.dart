import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../desktop/desktop_texter.dart';
import '../mobile/mobile_texter.dart';
import '../tablet/tablet_texter.dart';
import '../too_small_screen.dart';

class Texter extends StatelessWidget {
  const Texter({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DesktopTexter(),
      tablet: (BuildContext context) => const TabletTexter(),
      mobile: (BuildContext context) => const MobileTexter(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}