import 'package:flutter/material.dart';
import 'package:todo_list_b1/onborading/onboarding_child_page.dart';
import 'package:todo_list_b1/ultils/onboarding_page_position.dart';
import 'dart:developer';

import 'package:todo_list_b1/wellcome/wellcome_page.dart';

class OnboardingChildView extends StatefulWidget {
  const OnboardingChildView({super.key});

  @override
  State<OnboardingChildView> createState() => _OnboardingChildViewState();
}

class _OnboardingChildViewState extends State<OnboardingChildView> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController, // Đảm bảo controller được truyền đúng
        children: [
          OnboardingChildPage(
            onboardingPagePosition: OnboardingPagePosition.page1,
            nextOnpressed: () {
              pageController.jumpToPage(1);
            },
            back: () {
              // nothing
            },
            skip: () {
              _gotoWellcomePage();
            },
          ),
          OnboardingChildPage(
            onboardingPagePosition: OnboardingPagePosition.page2,
            nextOnpressed: () {
              pageController.jumpToPage(2);
            },
            back: () {
              pageController.jumpToPage(0);
            },
            skip: () {
              _gotoWellcomePage();
            },
          ),
          OnboardingChildPage(
            onboardingPagePosition: OnboardingPagePosition.page3,
            nextOnpressed: () {
              _gotoWellcomePage();
            },
            back: () {
              pageController.jumpToPage(1);
            },
            skip: () {
              _gotoWellcomePage();
            },
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  void _gotoWellcomePage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WellcomePage(),
        ));
  }
}
