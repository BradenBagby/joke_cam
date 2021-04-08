import 'package:flutter/material.dart';

import 'utilities/injection.dart';

class Core {
  ///Global setup
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Injection.setup();
  }
}
