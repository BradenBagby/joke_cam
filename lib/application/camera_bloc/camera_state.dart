part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    @Default(false) bool permissions,
    @Default(false) bool sayingJoke,
    @Default(false) bool fetchingJoke,
    @Default(null) Joke? joke,
    @Default(null) String? error,
    @Default(false) bool takePhoto,
  }) = _CameraState;
}
