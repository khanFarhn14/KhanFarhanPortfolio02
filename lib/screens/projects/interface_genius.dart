import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../desktop/desktop_interface_genius.dart';
import '../mobile/mobile_interface_genius.dart';
import '../tablet/tablet_interface_genius.dart';
import '../too_small_screen.dart';

class InterfaceGenius extends StatelessWidget {
  const InterfaceGenius({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DesktopInterfaceGenius(),
      tablet: (BuildContext context) => const TabletInterfaceGenius(),
      mobile: (BuildContext context) => const MobileInterfaceGenius(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}