import 'package:flutter/material.dart';

class SettingsSoundComponent extends StatelessWidget {
  const SettingsSoundComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.volume_up_rounded),
            Slider(value: 0, onChanged: (value) {})
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.music_note_rounded),
            Slider(value: 0, onChanged: (value) {})
          ],
        ),
      ],
    );
  }
}
