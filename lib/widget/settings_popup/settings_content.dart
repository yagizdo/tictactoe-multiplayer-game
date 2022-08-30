import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/widget/settings_popup/settings_sound_component.dart';
import 'package:tictactoe_multiplayer_game/widget/settings_popup/settings_vibration_component.dart';

import '../../constants/app_constants.dart';
import '../../constants/app_theme.dart';

class SettingsContent extends StatelessWidget {
  const SettingsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dialogColor,
      body: Stack(
        children: [
          Positioned(
            left: 260.w,
            right: 10.w,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                height15,
                Text(
                  'Settings',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                height30,
                const SettingsSoundComponent(),
                height15,
                const SettingsVibrationComponent(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
