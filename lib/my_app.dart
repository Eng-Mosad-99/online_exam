
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_exam/core/routing/app_router.dart';
import 'package:online_exam/core/theming/colors.dart';

import 'core/routing/routes.dart';

class OnlineExamApp extends StatelessWidget {
  const OnlineExamApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      minTextAdapt: true,
      splitScreenMode: true,
      
      builder: (_ , child) {
        return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen,
      theme: ThemeData(
        primaryColor: ColorsManager.mainBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
      },
    );
   
  }
}