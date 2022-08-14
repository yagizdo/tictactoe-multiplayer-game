// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> tr = {
  "home_view": {
    "single": "Bilgisayara Karşı",
    "coop": "2 Kişi",
    "Multiplayer": "Çok Oyunculu"
  }
};
static const Map<String,dynamic> en = {
  "home_view": {
    "single": "Single Player",
    "coop": "Co-Op",
    "Multiplayer": "Multi Player"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"tr": tr, "en": en};
}
