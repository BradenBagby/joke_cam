import 'package:get_it/get_it.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';

// ignore: avoid_classes_with_only_static_members
///handles dependency injection
class Injection {
  static final getIt = GetIt.instance;

  static Future<void> setup() {
    getIt.registerSingleton<CameraBloc>(CameraBloc());

    return GetIt.instance.allReady();
  }
}
