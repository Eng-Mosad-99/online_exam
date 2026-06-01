import 'package:online_exam/core/theming/app_assets.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({required this.image, required this.title, required this.body});
}

List<BoardingModel> boardingData = [
  BoardingModel(
    image: AppImages.onboarding1Image,
    title: 'Learn Anywhere',
    body:
        'Study for your exams anytime, anywhere. Your\n personalized learning dashboard and mock\n  tests are just one tap away on any device.',
  ),
  BoardingModel(
    image: AppImages.onboarding2Image,
    title: 'Practice Real Exams',
    body:
        'Access a vast library of mock tests and\n previous years papers to sharpen your skills\n and build confidence.',
  ),
  BoardingModel(
    image: AppImages.onboarding3Image,
    title: 'Track Your Progress',
    body:
        'Visualize your growth with detailed analytics\n and performance trends. Stay motivated and\n reach your academic goals with personalized\n insights tailored to your learning journey.',
  ),
];
