import 'package:flutter/material.dart';

class ProjectsContent{
  Color? secondaryColor;
  late String title;
  late String heroImagePath;
  late List<String> introduction;
  List <String>? projectObjective;
  late String keyFeatureAndFunctionality;
  late List<String> learnedLesson;
  late String lastImage1;
  String? lastImage2;
  Uri? figmaLink;

  ProjectsContent(
    {
      this.secondaryColor,
      required this.title,
      required this.heroImagePath,
      required this.introduction,
      this.projectObjective,
      required this.keyFeatureAndFunctionality,
      required this.learnedLesson,
      required this.lastImage1,
      this.lastImage2,
      this.figmaLink
    }
  );
}