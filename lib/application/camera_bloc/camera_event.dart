part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.checkPermissions({required bool ask}) = _CheckPermissions;
  const factory CameraEvent.takePhoto() = _TakePhoto;
}