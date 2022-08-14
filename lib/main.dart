import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/asset/localization/codegen_loader.g.dart';
import 'package:tictactoe_multiplayer_game/routes.dart';
import 'package:tictactoe_multiplayer_game/view/splash_view.dart';

import 'constants/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EasyLocalization.ensureInitialized();

  // env
  //await dotenv.load(fileName: ".env");

  // Get themeMode
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(EasyLocalization(
    path: 'lib/asset/localization/translation',
    supportedLocales: const [
      Locale('en'),
      Locale('tr'),
    ],
    assetLoader: const CodegenLoader(),
    fallbackLocale: const Locale('en'),
    child: MyApp(
      themeMode: savedThemeMode,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.themeMode}) : super(key: key);

  final dynamic themeMode;

  @override
  Widget build(BuildContext context) {
    // App Theme
    final appTheme = AppTheme();

    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (BuildContext context, Widget? child) => AdaptiveTheme(
        // Light Mode
        light: appTheme.lightTheme,

        // Dark Mode
        dark: appTheme.darkTheme,

        // initial
        initial: themeMode ?? AdaptiveThemeMode.system,

        // Builder
        builder: (theme, darkTheme) => MaterialApp(
          title: 'Material App',
          theme: theme,
          darkTheme: darkTheme,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          onGenerateRoute: Routes.generateRoute,
          home: const SplashView(),
        ),
      ),
    );
  }
}
