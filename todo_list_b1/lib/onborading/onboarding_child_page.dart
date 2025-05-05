// Giao diện màn hình
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:todo_list_b1/ultils/onboarding_page_position.dart';

class OnboardingChildPage extends StatelessWidget {
  final OnboardingPagePosition onboardingPagePosition;
  final VoidCallback nextOnpressed;
  final VoidCallback back;
  final VoidCallback skip;

  const OnboardingChildPage(
      {super.key,
      required this.onboardingPagePosition,
      required this.nextOnpressed,
      required this.back,
      required this.skip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildSkipButton(),
              buildImage(),
              buildControll(),
              buildTitleAndDescription(),
              buildBackAndNextBt(),
            ],
          ),
        ),
      ),
    );
  }

  // Phương thức này giờ nằm trong lớp, có thể truy cập onboardingPagePosition
  Widget buildSkipButton() {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      child: TextButton(
        onPressed: skip,
        child: Text(
          "Skip",
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.44)),
        ),
      ),
    );
  }

  // Phương thức này giờ nằm trong lớp, có thể truy cập onboardingPagePosition
  Widget buildImage() {
    return Image.asset(
      onboardingPagePosition.onboardingPageImage(),
      width: 210,
      height: 230,
      fit: BoxFit.contain,
    );
  }

  Widget buildControll() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 26,
            height: 4,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnboardingPagePosition.page1
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: 26,
            height: 4,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnboardingPagePosition.page2
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
          Container(
            width: 26,
            height: 4,
            decoration: BoxDecoration(
              color: onboardingPagePosition == OnboardingPagePosition.page3
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(56),
            ),
          ),
        ],
      ),
    );
  }

  // Phương thức này giờ nằm trong lớp, có thể truy cập onboardingPagePosition
  Widget buildTitleAndDescription() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Text(
            onboardingPagePosition.onboardingPageTitle(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontFamily: "Lato",
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 25),
          Text(
            onboardingPagePosition.onboardingPageContent(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.87),
              fontFamily: "Lato",
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buildBackAndNextBt() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24).copyWith(top: 80),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              back.call();
            },
            child: Text(
              "BACK",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.44),
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              nextOnpressed.call();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8875FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Text(
              onboardingPagePosition == OnboardingPagePosition.page3
                  ? "GET START"
                  : " NEXT",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
