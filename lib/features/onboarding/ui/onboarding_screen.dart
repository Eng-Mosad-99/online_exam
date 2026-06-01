import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam/core/helper/spacing.dart';
import 'package:online_exam/core/theming/colors.dart';
import 'package:online_exam/core/theming/styles.dart';
import 'package:online_exam/features/onboarding/models/boarding_model.dart';

import 'widgets/custom_slider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 20.h),
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  itemCount: boardingData.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32.r),
                          child: Image.asset(
                            boardingData[index].image,
                            width: double.infinity,
                            height: 358.h,
                            fit: BoxFit.fill,
                          ),
                        ),
                        verticalSpace(16.h),
                        Text(
                          boardingData[index].title,
                          style: Styles.font28BlackSemiBold,
                        ),
                        verticalSpace(16.h),
                        Text(
                          boardingData[index].body,
                          textAlign: TextAlign.center,
                          style: Styles.font16BlackRegular,
                        ),
                        verticalSpace(20.h),
                        CustomSlider(currentPage: currentPage),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
