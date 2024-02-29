
import 'dart:convert';

import 'package:fintech_app/data/models/onboarding_screen.model.dart';

String jsonStr = '''
  {
    "company_name": "FinTune",
    "onboarding_screens": [
      {
        "img":"assets/lottie/onBoarding_1.json",
        "title": "Welcome to FinTune",
        "description": "Join FinTune - Your Financial Revolution Starts Here! Experience seamless onboarding, personalized financial insights, and innovative tools to supercharge your finances."
      },
      {
        "img": "assets/lottie/onBoarding_2.json",
        "title": "Your Financial Future Starts Now!",
        "description": "Embark on a journey to financial freedom with FinTune. Our easy onboarding process puts you in control, offering expert advice and tailored solutions to help you achieve your financial goals."
      },
      {
        "img": "assets/lottie/onBoarding_3.json",
        "title": "Join the FinTune Revolution",
        "description": "Get ready to revolutionize the way you manage money. Sign up with FinTune for a seamless onboarding experience, cutting-edge financial tools, and personalized recommendations to take your finances to the next level."
      }
    ]
  }
  ''';
  Map<String, dynamic> jsonData = json.decode(jsonStr);
  FinTuneOnboardingScreens fintuneOnboarding = FinTuneOnboardingScreens.fromMap(jsonData);