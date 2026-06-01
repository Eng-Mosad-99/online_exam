import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam/core/helper/spacing.dart';
import 'package:online_exam/core/theming/app_assets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.h),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(32.r),
                child: Image.asset(
                  AppImages.onboarding1Image,
                  width: double.infinity,
                  height: 358.h,
                  fit: BoxFit.fill,
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
