import 'package:fintech_app/data/models/onboarding_screen.model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingTile extends StatelessWidget {
  final OnboardingTileModel onboardingTileModel;
  const OnBoardingTile({
    required this.onboardingTileModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 500,
            width: 300,
            child: Lottie.asset(onboardingTileModel.img),
          ),
           Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                onboardingTileModel.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
               Wrap(
                children: [
                  Text(onboardingTileModel.desc),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
