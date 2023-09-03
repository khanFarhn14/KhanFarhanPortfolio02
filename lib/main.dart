import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khan_farhan_02/routes/app_route_config.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_strategy/url_strategy.dart';
import 'model/firebase_web_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: FirebaseConstants.apiKey,
      projectId: FirebaseConstants.projectId,
      appId: FirebaseConstants.appId,
      messagingSenderId: FirebaseConstants.messagingSenderId,
    )
  );

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 1280, tablet: 600, watch: 315),
  );
  setPathUrlStrategy();
  runApp
  (
    const MyApp()
  );
}

class MyApp extends StatelessWidget 
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp.router
    (
      routerConfig: MyAppRouter().router,
      title: 'Khan Farhan Portfolio',
      debugShowCheckedModeBanner: false,
    );
  }
}