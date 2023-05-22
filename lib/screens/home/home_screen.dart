import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/home/recommendations.dart';
import '../main_screen.dart';
import 'components/home_banner.dart';
import 'contact_page.dart';
import 'my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        SizedBox(
          height: defaultPadding,
        ),
        MyProjects(),
        SizedBox(
          height: defaultPadding,
        ),
        Recommendations(),
        SizedBox(
          height: defaultPadding,
        ),
        ContactPage()
      ],
    );
  }
}
