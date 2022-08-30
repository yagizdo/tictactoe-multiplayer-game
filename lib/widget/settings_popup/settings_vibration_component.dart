import 'package:flutter/cupertino.dart';

import '../../constants/app_constants.dart';

class SettingsVibrationComponent extends StatelessWidget {
  const SettingsVibrationComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Vibration'),
        width9,
        CupertinoSwitch(value: false, onChanged: (value) {}),
      ],
    );
  }
}
