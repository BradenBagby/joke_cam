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
    yield* event.map(
        checkPermissions: _checkPermissions, takePhoto: _takePhoto);
  }

  Stream<CameraState> _takePhoto(_TakePhoto event) async* {
    final duration = const Duration(
        seconds: 2); //TODO: load in joke from api, convert to mp3, get duration
    yield state.copyWith(takingPhoto: true, jokeDuration: duration);
    await Future.delayed(duration);
    yield state.copyWith(takingPhoto: false);
  }

  Stream<CameraState> _checkPermissions(_CheckPermissions event) async* {
    final hasCameraPermission =
        await Permissions.camera(requestIfUnallowed: event.ask);
    yield state.copyWith(permissions: hasCameraPermission);
  }
}
