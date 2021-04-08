import 'dart:io';

import 'package:permission_handler/permission_handler.dart';

///no interface needed for this
class Permissions {
  static Future<bool> camera({bool requestIfUnallowed = true}) =>
      requestIfUnallowed
          ? Permission.camera.request().isGranted
          : Permission.camera.isGranted;

  static Future<bool> library({bool requestIfUnallowed = true}) {
    if (Platform.isAndroid) {
      return requestIfUnallowed
          ? Permission.storage.request().isGranted
          : Permission.storage.isGranted;
    }

    //is ios
    return requestIfUnallowed
        ? Permission.photosAddOnly.request().isGranted
        : Permission.photosAddOnly.isGranted;
  }
}
