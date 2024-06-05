
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';


class Initializer {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _initRotation();
    _initBinding();


  }


  /// initialBindings
  static void _initBinding() {}

  static void _initRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}