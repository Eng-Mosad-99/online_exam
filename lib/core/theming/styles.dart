import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'font_weight_helper.dart';

class Styles {
  static TextStyle font28BlackSemiBold =  TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.black,
    fontFamily: 'Inter',
  );

  static TextStyle font16BlackRegular =  TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lightBlack,
    fontFamily: 'Inter',
  );
  static TextStyle font16GreyRegular =  TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
    fontFamily: 'Inter',
  );
  static TextStyle font16LighterGreyRegular =  TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lighterGrey,
    fontFamily: 'Inter',
  );


}