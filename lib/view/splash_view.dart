import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:tictactoe_multiplayer_game/constants/app_assets.dart';
import 'package:tictactoe_multiplayer_game/constants/app_theme.dart';
import 'package:tictactoe_multiplayer_game/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (1)),
      vsync: this,
    );
  }

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
        child: Lottie.asset(
          AppAsset.splashLogoGif,
          width: 173.w,
          height: 173.h,
          controller: _controller,
          onLoaded: (composition) {
            _controller
              ..duration = composition.duration
              ..forward().whenComplete(
                () => Navigator.pushReplacementNamed(
                  context,
                  Routes.homeViewRoute,
                ),
              );
          },
        ),
      ),
    );
  }
}
