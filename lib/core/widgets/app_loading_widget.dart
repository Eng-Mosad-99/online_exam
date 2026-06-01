
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child:  Center(
        child: CircularProgressIndicator(
          color: ColorsManager.mainBlue,
          strokeWidth: 1.w,
        ),
      ),
    );
  }
}