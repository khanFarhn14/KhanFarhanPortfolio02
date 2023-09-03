import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../model/projects.dart';
import '../../model/projects_content.dart';
import '../../model/social_media.dart';
import 'colors.dart';


// Image Path
const String _developer = 'assets/images/Developer.svg';
String getDeveloperIllustration() => _developer;

const String _developerFull = 'assets/images/developer_full.svg';
String getDeveloperFull() => _developerFull;

const String _designer = 'assets/images/Designer.svg';
String getDesignerIllustration() => _designer;

const String _designerFull = 'assets/images/designer_full.svg';
String getDesignerFull() => _designerFull;

const String _pageUnderConstruction = 'assets/images/page_under_construction.gif';
String getPageUnderConstruction() => _pageUnderConstruction;

const String _error = 'assets/images/error_404.gif';
String getError() => _error;

const String _uiDesign = 'assets/images/ui_design.svg';
String getUIDesign() => _uiDesign;

const String _showCaseDesignP = 'assets/images/show_case_design_p.png';
String getShowCaseDesign() => _showCaseDesignP;

const String _illustrationAnchor = 'assets/images/illustration_anchor.svg';
String getIllustrationAnchor() => _illustrationAnchor;

const String _cardBackground = 'assets/images/card_background.png';
String getCardBackground() => _cardBackground;

const String _programming = 'assets/images/programming.svg';
String getProgrammingIllustration() => _programming;

const String _thePortrait = 'assets/images/the_portrait.png';
String getThePortrait() => _thePortrait;


// Logos
const String _flutter = 'assets/images/logos/flutter.svg';
String getFlutter() => _flutter;

const String _java = 'assets/images/logos/java.svg';
String getJava() => _java;

const String _html = 'assets/images/logos/html.svg';
String getHTML() => _html;

const String _css = 'assets/images/logos/css.svg';
String getCSS() => _css;

const String _office = 'assets/images/logos/office.svg';
String getOffice() => _office;

const String _linkenIn = 'assets/images/logos/linkedin.svg';
String getLinkedIn() => _linkenIn;

const String _gitHubBlack = 'assets/images/logos/github_black.svg';
String getGitHubBlack() => _gitHubBlack;

const String _twitter = 'assets/images/logos/twitter.svg';
String getTwitter() => _twitter;

const String _firebase = 'assets/images/logos/firebase.svg';
String getFirebase() => _firebase;

const String _vscode = 'assets/images/logos/vscode.svg';
String getVscode() => _vscode;

const String _openWeather = 'assets/images/logos/openweather.png';
String getOpenWeather() => _openWeather;

const String _postman = 'assets/images/logos/postman.svg';
String getPostman() => _postman;

const String _figma = 'assets/images/logos/figma.svg';
String getFigma() => _figma;


// WEATHER WISE
const String _weatherWiseHomeScreen = 'assets/images/weather_wise/weather_wise_home_screen_1.png';
const String _weatherWiseHomeScreenScroll = 'assets/images/weather_wise/weather_wise_home_screen_2.png';
const String _weatherWiseHeroPresentation = 'assets/images/weather_wise/weather_wise_hero_presentation.png';
const String _weatherWiseStep1 = 'assets/images/weather_wise/weather_wise_first_step_card.png';
String getWWStep1()=>_weatherWiseStep1;

const String _weatherWiseStep2 = 'assets/images/weather_wise/weather_wise_second_step_card.png';
String getWWStep2()=> _weatherWiseStep2;

const String _weatherWiseStep3 = 'assets/images/weather_wise/weather_wise_third_step_card.png';
String getWWStep3()=> _weatherWiseStep3;

const String _weatherWiseArchitecture = 'assets/images/weather_wise/weather_wise_architecture.svg';
String getWeatherWiseArchitecture()=> _weatherWiseArchitecture;

const String _weatherWiseBottomPresentation1 = 'assets/images/weather_wise/weather_wise_bottom_presentation_1.png';
const String _weatherWiseBottomPresentation2 = 'assets/images/weather_wise/weather_wise_bottom_presentation_2.png';


// TEXTER
const String _texter1 = 'assets/images/texter/texter_1.png';
const String _texter2 = 'assets/images/texter/texter_2.png';
const String _texterHeroPresentation = 'assets/images/texter/texter_hero_presentation.png';
const String _environmentSetupIllustration = 'assets/images/texter/environment_setup_flutter_firebase.svg';
String getEnvironmentSetupIllustration() => _environmentSetupIllustration;

const String _texterStep1 = 'assets/images/texter/texter_step_1.svg';
String getTexterStep1() => _texterStep1;

const String _texterStep1Mobile = 'assets/images/texter/texter_step_1_mobile.svg';
String getTexterStep1Mobile() => _texterStep1Mobile;

const String _texterStep2 = 'assets/images/texter/texter_step_2.svg';
String getTexterStep2() => _texterStep2;

const String _texterStep2Mobile = 'assets/images/texter/texter_step_2_mobile.svg';
String getTexterStep2Mobile() => _texterStep2Mobile;

const String _texterStep3 = 'assets/images/texter/texter_step_3.svg';
String getTexterStep3() => _texterStep3;

const String _texterStep3Mobile = 'assets/images/texter/texter_step_3_mobile.svg';
String getTexterStep3Mobile() => _texterStep3Mobile;

const String _searchingBackend = 'assets/images/texter/searching_backend_video.svg';
String searchingBackend() => _searchingBackend;

const String _userFlow = 'assets/images/texter/user_flow.svg';
String getUserFlow() => _userFlow;

const String _userFlowChat = 'assets/images/texter/user_flow_chart.png';
String getUserFlowChat() => _userFlowChat;

const String _texterBottomPresentation = 'assets/images/texter/texter_bottom_presentation.png';


// INTERFACE GENIUS
const String _interfaceQuiz1 = 'assets/images/interface_genius/interface_quiz_1.png';
const String _interfaceQuiz2 = 'assets/images/interface_genius/interface_quiz_2.png';
const String _wireframe = 'assets/images/interface_genius/wireframe.svg';
String getWireframe() => _wireframe;

const String _igStep1 = 'assets/images/interface_genius/interface_genius_step_1.svg';
String getIGStep1() => _igStep1;

const String _igStep2 = 'assets/images/interface_genius/interface_genius_step_2.svg';
String getIGStep2() => _igStep2;

const String _interfaceGeniusHeroPresentation = 'assets/images/interface_genius/interface_genius_hero_presentation.png';
const String _interfaceGeniusBottomPresentation = 'assets/images/interface_genius/interface_genius_bottom_presentation.png';


// FAIR SHARE
const String _fairShare = 'assets/images/fair_share/fair_share.png';
const String _fairShareHeroPresentation = 'assets/images/fair_share/fair_share_hero_presentation.png';
const String _fairShareBottomPresentation = 'assets/images/fair_share/fair_share_bottom_presentation.png';
const String _approachContent = 'The Flutter project I developed on August 2022 was my first ever project in the Flutter environment An instructor from the Udemy course guided me in the development of this project';
String getApproachContent() => _approachContent;


// Copyright (c)
const String _copyRight = 'Designed and developed by Khan Farhan. © 2023 All rights reserved';
String getCopyRight() => _copyRight;


// Url link
final Uri _urlTwitter = Uri.parse('https://twitter.com/_khanFarhn_');

final Uri _urlGitHub = Uri.parse('https://github.com/khanFarhn14');

final Uri _urlLinkedIn = Uri.parse('https://www.linkedin.com/in/khan-farhan-079884220/');

// GitHub
final Uri _urlWeatherWise = Uri.parse('https://github.com/khanFarhn14/Weather-Application');

final Uri _urlTexter = Uri.parse('https://github.com/khanFarhn14/Texter-the-Chat-app');

final Uri _urlInterfaceGenuis = Uri.parse('https://github.com/khanFarhn14/User-Interface-Quiz-app');

final Uri _urlFairshare = Uri.parse('https://github.com/khanFarhn14/Bill-Splitter');

final Uri _urlThePortrait = Uri.parse('https://theportrait.w3spaces.com/');
Uri getThePortraitLink() => _urlThePortrait;

// Figma
final Uri _urlTexterFigmaPrototype = Uri.parse('https://www.figma.com/file/lGF0l5q8iusw6rCtPBDC0q/Chat-App?type=design&node-id=0%3A1&mode=design&t=6dknAxeBXJ6ksU9w-1');

final Uri _urlInterfaceGeniusFigmaPrototype = Uri.parse('https://www.figma.com/file/zQLvBP0SSfvk1VM6OA9tcs/APP-UI?type=design&node-id=388%3A72&mode=design&t=TujBoSx4lyQkhMaY-1');

// Google Docs Link for resume
final Uri _urlResume = Uri.parse('https://docs.google.com/document/d/1-mgAmaucpV1wVZmYoacInCvd7Xe5-ia0p2cUx587eyI/edit?usp=sharing');
Uri getResumeLink() => _urlResume;



// Social Media icon and links
final List<SocialMedia> links = [
  SocialMedia(icon: FontAwesomeIcons.github, link: _urlGitHub),
  SocialMedia(icon: FontAwesomeIcons.linkedin, link: _urlLinkedIn),
  SocialMedia(icon: FontAwesomeIcons.twitter, link: _urlTwitter),
];


// List of Projects
List<Projects> projects = [
  Projects(
    backgroundColor: const Color(0xFFD4E8F8),
    borderColor: const Color(0xffB6C1CC),
    imagePath_1: _weatherWiseHomeScreen,
    imagePath_2: _weatherWiseHomeScreenScroll,
    title: 'Weather Wise',
    date: 'June 2023',
    description: 'A weather forecast application that utilizes the Open weather API to provide accurate and up-to-date weather information.',
    gitHubLink: _urlWeatherWise,
    route: '/developer_projects/weather_wise', 
  ),

  Projects(
    backgroundColor: const Color(0xffBAC6FF),
    borderColor: const Color(0xff54426B),
    imagePath_1: _texter1,
    imagePath_2: _texter2,
    title: 'Texter',
    date: 'December 2022 - February 2023',
    description: 'The Texter chat application utilizes Firebase\'s backend to create a real-time messaging platform with user authentication and encryption.',
    gitHubLink: _urlTexter,
    route: '/developer_projects/texter'
  ),

  Projects(
    backgroundColor: const Color(0xffDBDBDB),
    borderColor: secondary,
    imagePath_1: _interfaceQuiz1,
    imagePath_2: _interfaceQuiz2,
    title: 'Interface Genius',
    date: 'October 2022 - November 2022',
    description: 'The app presents questions related to various aspects of UI design, including UI layout and user experience.',
    gitHubLink: _urlInterfaceGenuis,
    route: '/developer_projects/interface_genius'
  ),

  Projects(
    backgroundColor: const Color(0xffE3D9F1),
    borderColor: const Color(0xff9278CC),
    imagePath_1: _fairShare,
    title: 'Fair Share',
    date: 'August 2022',
    description: 'Fair Share is a Bill Splitter application designed for convenient splitting of expenses among colleagues, friends, and families.',
    gitHubLink: _urlFairshare,
    route: '/developer_projects/fair_share'
  ),
];


// Projects Contents List
List<ProjectsContent> projectsContent = [

  // Weather Wise
  ProjectsContent(
    secondaryColor: weathrWiseSecondary,
    title: 'Weather Wise',
    heroImagePath: _weatherWiseHeroPresentation,
    introduction: [
      'A weather forecast application that uses the Openweather API to display the forecast in the application.',
      'By using the openweather API, we can obtain current, hourly, and daily weather information at any given time.',
    ],
    projectObjective: [
      'The purpose of this project was to become more familiar with API calls, HTTP requests, store and structured API requests.'
    ],
    keyFeatureAndFunctionality: 'The main feature of the WeatherWise application is that it displays the current temperature, wind speed, clouds, and humidity as well as the hourly and daily forecast in a ListView',
    learnedLesson: [
      'Developed an understanding of APIs',
      'The process of making an HTTP request from Openweather',
      'Structure and store API data in the application',
      'The GetX Framework'
    ],
    lastImage1: _weatherWiseBottomPresentation1,
    lastImage2: _weatherWiseBottomPresentation2,
    figmaLink: null,
  ),

  // Texter
  ProjectsContent(
    secondaryColor: texterSecondaryColor,
    title: 'Texter',
    heroImagePath: _texterHeroPresentation,
    introduction: [
      'The Texter chat application is a chatting application that uses the backend of Firebase to implement a user interface.',
      'The application allows users to send and receive messages in real-time.',
      'It also provides features such as user authentication and encryption for secure communication.'
    ],
    projectObjective: [
      'The purpose of this project was to gain an understanding of the backend and user authentication mechanisms',
      'Getting familiar with Firebase and the backend functionality was the primary objective.',
    ],
    keyFeatureAndFunctionality: 'A key feature of texter is that it enables you to chat with more than two users simultaneously',
    learnedLesson: [
      'Shared Preferences',
      'Firebase Authentication service',
      'Firebase Data collection',
      'Connection between the backend and frontend of the application'
    ],
    lastImage1: _texterBottomPresentation,
    figmaLink: _urlTexterFigmaPrototype
  ),

  // Interface Genius
  ProjectsContent(
    secondaryColor: secondary,
    title: 'Interface Genius',
    heroImagePath: _interfaceGeniusHeroPresentation,
    introduction: [
      'The Interface Genius is a Quiz Application that asks questions related to user interface design.',
      'This app is designed to help you test your knowledge of user interface design.',
      'The app includes questions on topics such as UI layout, user experience, and more.'
    ],
    projectObjective: [
      'The purpose of this project was to gain an understanding of the backend and user authentication mechanisms',
      'Getting familiar with Firebase and the backend functionality was the primary objective.',
    ],
    keyFeatureAndFunctionality: 'It is an easy-to-use mobile application that is responsive and simple to use',
    learnedLesson: [
      'Navigating between different pages',
      'Responsive Application',
      'Firebase Data collection',
      'Management of files has a number of advantages'
    ],
    lastImage1: _interfaceGeniusBottomPresentation,
    figmaLink: _urlInterfaceGeniusFigmaPrototype,
  ),

  // Fair Share
  ProjectsContent(
    secondaryColor: fairShareSecondary,
    title: 'Fair Share',
    heroImagePath: _fairShareHeroPresentation,
    introduction: [
      'Fair Share is Bill Splitter application among colleagues, friends and families',
      'The idea was conceived during a meal with friends.',
      'Using the Fair Share application, you can determine the amount each individual should receive based on the amount of the bill, the number of people, and the number of families.'
    ],
    projectObjective: null,
    keyFeatureAndFunctionality: 'A key feature of the FairShare application is that you can determine how much each person should receive based on the amount of the bill, how many people, and how many households there are.',
    learnedLesson: [
      'Rows and Columns Widget',
      'Input Widget',
      'Basic button and its functions',
    ],
    lastImage1: _fairShareBottomPresentation,
    figmaLink: null
  ),
];


class AboutMe{

  final String _name = 'Khan Farhan';

  final String _email = 'thecubeshade21@gmail.com';

  final String _phone = '+91 9987063990';

  final String _heroText = '“Crafting seamless experiences and pixel-perfect designs.”';

  final String _bio = 'Hi there! I am Khan Farhan, currently pursuing a bachelor of engineering degree in Computer Science and Engineering (Internet of Things and Cyber Security including Block Chain Technology). I am a passionate Flutter developer and UI designer. With a keen eye for aesthetics and a knack for coding, I specialize in creating stunning mobile applications that not only look great but also deliver an exceptional user experience.';

  final String _mssge = 'With a deep understanding of the latest design trends, best practices, and emerging technologies, I stay at the forefront of the industry, continuously pushing the boundaries of what\'s possible. I take pride in my attention to detail and my ability to balance aesthetics with functionality, resulting in polished designs and seamless user interactions.'; 

  final String _question = 'How am I different from other designers and Flutter developers?';

  final List<String> _bulletPoint = [
    'My approach combines cutting-edge technologies with user-centered design principles, ensuring that every interaction feels intuitive and engaging.',
    'With a solid background in both development and design, I bring a unique blend of technical expertise and creative vision to every project.',
    'Harness the power of this versatile framework to build high-performance, cross-platform mobile applications.',
    'In my role as a UI designer, I strive to create interfaces that not only look visually stunning but also prioritize usability and user satisfaction.',
  ];

  String getHeroText() => _heroText;

  String getBio() => _bio;

  String getMssge() => _mssge;

  String getQuestion() => _question;

  String getName() => _name;

  String getEmail() => _email;

  String getPhone() => _phone;

  List<String> getBulletPoint() => _bulletPoint;
}