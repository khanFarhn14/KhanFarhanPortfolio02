import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khan_farhan_02/routes/route_constants.dart';
import '../screens/designer_screen.dart';
import '../screens/developer_screen.dart';
import '../screens/error_screen.dart';
import '../screens/hero_screen.dart';
import '../screens/projects/fair_share.dart';
import '../screens/projects/interface_genius.dart';
import '../screens/projects/texter.dart';
import '../screens/projects/weather_wise.dart';

class MyAppRouter{
  GoRouter router = GoRouter(
    errorPageBuilder: (context, state) => CustomTransitionPage<void>(
      key: state.pageKey,
      child: const ErrorScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
    ),

    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: RouteConst().home,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const HeroScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
        ),
        
        routes: [
          GoRoute(
            path: 'developer_projects',
            name: RouteConst().developerProjects,
            pageBuilder: (context, state) => CustomTransitionPage<void>(
              key: state.pageKey,
              child: const DeveloperScreen(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
            ),

            // Projects Routes
            routes: [
              // Weather Wise
              GoRoute(
                path: 'weather_wise',
                name: RouteConst().weatherWise,
                pageBuilder: (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: const WeatherWise(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
                ),
              ),

              // Texter
              GoRoute(
                path: 'texter',
                name: RouteConst().texter,
                pageBuilder: (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: const Texter(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
                ),
              ),

              // Interface Genius
              GoRoute(
                path: 'interface_genius',
                name: RouteConst().interfaceGenius,
                pageBuilder: (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: const InterfaceGenius(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
                ),
              ),

              // Fair Share
              GoRoute(
                path: 'fair_share',
                name: RouteConst().fairShare,
                pageBuilder: (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: const FairShare(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
                ),
              ),
            ]
          ),
        ]
      ),

      GoRoute(
        path: '/designer_projects',
        name: RouteConst().designerProjects,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const DesignerScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
        ),
      ),
    ],
  );
}
