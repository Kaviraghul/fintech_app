// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FinTuneOnboardingScreens {
  final String companyName;
  final List<OnboardingTileModel> onboardingScreens;
  FinTuneOnboardingScreens({
    required this.companyName,
    required this.onboardingScreens,
  });

  FinTuneOnboardingScreens copyWith({
    String? companyName,
    List<OnboardingTileModel>? onboardingScreens,
  }) {
    return FinTuneOnboardingScreens(
      companyName: companyName ?? this.companyName,
      onboardingScreens: onboardingScreens ?? this.onboardingScreens,
    );
  }

  factory FinTuneOnboardingScreens.fromMap(Map<String, dynamic> map) {
    return FinTuneOnboardingScreens(
      companyName: map['company_name'] as String,
      onboardingScreens: List<OnboardingTileModel>.from(
        (map['onboarding_screens']).map<OnboardingTileModel>(
          (x) => OnboardingTileModel.fromMap(x),
        ),
      ),
    );
  }

  // factory FinTuneOnboardingScreens.fromJson(Map<String, dynamic> source) =>
  //     FinTuneOnboardingScreens.fromMap(json.decode(source));
}

class OnboardingTileModel {
  final String title;
  final String desc;
  final String img;
  OnboardingTileModel({
    required this.title,
    required this.desc,
    required this.img,
  });

  OnboardingTileModel copyWith({
    String? title,
    String? desc,
    String? img,
  }) {
    return OnboardingTileModel(
      title: title ?? this.title,
      desc: desc ?? this.desc,
      img: img ?? this.img,
    );
  }

  factory OnboardingTileModel.fromMap(Map<String, dynamic> map) {
    return OnboardingTileModel(
      title: map['title'] as String,
      desc: map['description'] as String,
      img: map['img'] as String,
    );
  }

  factory OnboardingTileModel.fromJson(String source) =>
      OnboardingTileModel.fromMap(json.decode(source));
}
