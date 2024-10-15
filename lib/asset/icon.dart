// Place fonts/authIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
  // fonts:
  //  - family: authIcon
  //    fonts:
  //     - asset: fonts/authIcon.ttf
import 'package:flutter/widgets.dart';

class AuthIcon {
  AuthIcon._();

  static const String _fontFamily = 'authIcon';

  static const IconData passwordIcon = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData authDisableIcon = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData authEnableIcon = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData userIcon = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData mailIcon = IconData(0xe904, fontFamily: _fontFamily);
}
