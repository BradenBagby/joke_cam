part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({@Default(false) bool permissions}) = _CameraState;
}
