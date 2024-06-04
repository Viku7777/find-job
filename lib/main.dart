import 'package:find_jobs/view/bottombar_view/bottombar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if y(
      child: MaterialApp(
        title: 'Find Jobs',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                centerTitle: false,
                titleTextStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white)),
        home: const BottomNavigationBarview(),
      ),
    );
  }
}
