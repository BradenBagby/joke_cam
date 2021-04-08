import 'dart:ffi';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';
import 'package:happy_camera/core/utilities/images.dart';
import 'package:happy_camera/widgets/routes/main/loading_cameras_widget.dart';
import 'package:happy_camera/widgets/routes/main/photo_button.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late CameraController _cameraController;
  List<CameraDescription>? cameras;

  @override
  void initState() {
    super.initState();
    setup();
  }

  Future<void> setup() async {
    cameras = await availableCameras();
    _cameraController = CameraController(cameras![0], ResolutionPreset.max);
    _cameraController.initialize().then((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CameraBloc, CameraState>(
      listener: (context, state) {
        takePhoto(context);
      },
      listenWhen: (before, after) {
        return !before.takePhoto && after.takePhoto;
      },
      child: Scaffold(
        body: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    if (cameras == null || !_cameraController.value.isInitialized) {
      return LoadingCamerasWidget();
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        _camera(context),
        _photoButton(context),
        _loadingJoke(context)
      ],
    );
  }

  Widget _loadingJoke(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: BlocBuilder<CameraBloc, CameraState>(
          builder: (context, state) {
            if (state.fetchingJoke) {
              return const LinearProgressIndicator();
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  Widget _photoButton(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: PhotoButton(),
        ),
      ),
    );
  }

  Widget _camera(BuildContext context) {
    return SizedBox.expand(
      child:
          Container(color: Colors.red, child: CameraPreview(_cameraController)),
    );
  }

  Future<void> takePhoto(BuildContext context) async {
    final image = await _cameraController.takePicture();
    await Images.savePhoto(image.path);
    BlocProvider.of<CameraBloc>(context).add(const CameraEvent.newJoke());
  }
}
