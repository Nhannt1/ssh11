enum OnboardingPagePosition {
  page1,
  page2,
  page3,
}

extension OnboardingPagePositionExtension on OnboardingPagePosition {
  // tra ve image cho 3 page
  String onboardingPageImage() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "asset/images/frame1.png";
      case OnboardingPagePosition.page2:
        return "asset/images/frame2.png";
      case OnboardingPagePosition.page3:
        return "asset/images/frame3.png";
    }
  }

  String onboardingPageTitle() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "Manage your tasks";
      case OnboardingPagePosition.page2:
        return "Create daily routine";
      case OnboardingPagePosition.page3:
        return "Orgonaize your tasks";
    }
  }

  String onboardingPageContent() {
    switch (this) {
      case OnboardingPagePosition.page1:
        return "You can easily manage all of your daily tasks in DoMe for free";
      case OnboardingPagePosition.page2:
        return "In Uptodo  you can create your personalized routine to stay productive";
      case OnboardingPagePosition.page3:
        return "You can organize your daily tasks by adding your tasks into separate categories";
    }
  }
}
