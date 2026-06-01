
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam/core/theming/colors.dart';
import '../../models/boarding_model.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        boardingData.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentPage == index ? 28.w : 8.w,
          height: 8.h,
          decoration: BoxDecoration(
            color: currentPage == index
                ? ColorsManager.mainBlue
                : ColorsManager.lightGrey,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
