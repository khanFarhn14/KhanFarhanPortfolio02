import 'package:flutter/material.dart';

class Projects{
  late Color backgroundColor;
  late Color borderColor; 
  late String imagePath_1;
  String? imagePath_2;
  late String title, date, description;
  late Uri gitHubLink;
  late String route;

  Projects(
    {
      required this.backgroundColor, 
      required this.borderColor, 
      required this.imagePath_1,
      this.imagePath_2,
      required this.title,
      required this.date,
      required this.description,
      required this.gitHubLink,
      required this.route,
    }
  );
}