import 'package:flutter/material.dart';
import 'package:happy_camera/core/core.dart';
import 'package:happy_camera/widgets/routes/root_widget.dart';

Future<void> main() async {
  await Core.init();
  runApp(RootWidget());
}
