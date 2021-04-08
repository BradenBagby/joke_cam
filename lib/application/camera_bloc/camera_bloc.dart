import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happy_camera/core/utilities/permissions.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(const CameraState()) {
    add(const CameraEvent.checkPermissions(ask: false));
  }

  @override
  Stream<CameraState> mapEventToState(
    CameraEvent event,
  ) async* {
    yield* event.map(checkPermissions: _checkPermissions);
  }

  Stream<CameraState> _checkPermissions(_Started event) async* {
    final hasCameraPermission =
        await Permissions.camera(requestIfUnallowed: event.ask);
    yield state.copyWith(permissions: hasCameraPermission);
  }
}
