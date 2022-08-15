import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_assets.dart';
import '../constants/app_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [linearColorOne, linearColorTwo]),
          image: DecorationImage(
            image: AssetImage(AppAsset.backgroundImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            // Logo Placeholder
            SizedBox(width: 173.w, height: 173.h, child: const Placeholder()),
          ],
        ),
      ),
    );
  }
}
