import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:happy_camera/core/utilities/logger.dart';
import 'package:happy_camera/core/utilities/permissions.dart';

class Images {
  static Future<bool> savePhoto(String path) async {
    try {
      if (await Permissions.library()) {
        await GallerySaver.saveImage(path);
        return true;
      }
    } catch (er) {
      Logger.log("error saving photo: $er");
    }
    return false;
  }
}
