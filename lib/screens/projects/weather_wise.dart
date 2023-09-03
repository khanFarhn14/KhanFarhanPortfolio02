import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../desktop/desktop_weather_wise.dart';
import '../mobile/mobile_weather_wise.dart';
import '../tablet/tablet_weather_wise.dart';
import '../too_small_screen.dart';

class WeatherWise extends StatelessWidget {
  const WeatherWise({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => const DesktopWeatherWise(),
      tablet: (BuildContext context) => const TabletWeatherWise(),
      mobile: (BuildContext context) => const MobileWeatherWise(),
      watch: (BuildContext context) => const TooSmallScreen(),
    );
  }
}