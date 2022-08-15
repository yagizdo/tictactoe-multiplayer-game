import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/asset/localization/codegen_loader.g.dart';
import 'package:tictactoe_multiplayer_game/routes.dart';
import 'package:tictactoe_multiplayer_game/view/splash_view.dart';

import 'constants/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // env
  //await dotenv.load(fileName: ".env");

  runApp(EasyLocalization(
    path: 'lib/asset/localization/translation',
    supportedLocales: const [
      Locale('en'),
      Locale('tr'),
    ],
    assetLoader: const CodegenLoader(),
    fallbackLocale: const Locale('en'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // App Theme
    final appTheme = AppTheme();

    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: 'Material App',
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        onGenerateRoute: Routes.generateRoute,
        home: const SplashView(),
      ),
    );
  }
}
