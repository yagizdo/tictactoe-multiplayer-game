import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

class SettingsContactButton extends StatelessWidget {
  const SettingsContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.w,
      child: ElevatedButton(
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(orange)),
          onPressed: () {},
          child: Row(
            children: const [Icon(Icons.mail), Text('Contact')],
          )),
    );
  }
}
