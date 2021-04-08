part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    @Default(false) bool permissions,
    @Default(false) bool takingPhoto,
    @Default(Duration.zero) Duration jokeDuration,
  }) = _CameraState;
}
