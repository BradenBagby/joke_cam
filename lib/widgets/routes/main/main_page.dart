import 'dart:ffi';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happy_camera/application/camera_bloc/camera_bloc.dart';
import 'package:happy_camera/core/utilities/images.dart';
import 'package:happy_camera/widgets/routes/main/loading_cameras_widget.dart';
import 'package:happy_camera/widgets/routes/main/photo_button.dart';
import 'package:happy_camera/widgets/routes/main/settings_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late CameraController _cameraController;
  List<CameraDescription>? cameras;
  final _pageController = PageController();
  int camera = 0;

  @override
  void initState() {
    super.initState();
    availableCameras().then((value) {
      cameras = value;
      setupCam(cameras![camera]);
    });
  }

  Future<void> setupCam(CameraDescription camera) async {
    _cameraController = CameraController(camera, ResolutionPreset.max);
    _cameraController.initialize().then((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  void _toggleCameraLens() {
    camera = camera == 0 ? 1 : 0;
    setupCam(cameras![camera]);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        _cameraPage(context),
        SettingsPage(_pageController),
      ],
    );
  }

  Widget _cameraPage(BuildContext context) {
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
        _loadingJoke(context),
        _toolbar(context),
        _photoOverlay(context)
      ],
    );
  }

  Widget _photoOverlay(BuildContext context) {
    return BlocBuilder<CameraBloc, CameraState>(builder: (context, state) {
      if (state.takePhoto) {
        return SizedBox.expand(
            child: Image.asset(
          "assets/images/smile.png",
          fit: BoxFit.contain,
        ));
      }
      return Container();
    });
  }

  Widget _toolbar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SafeArea(
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.flip_camera_ios_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                _toggleCameraLens();
              },
            ),
            const Expanded(child: SizedBox()),
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut);
              },
            ),
          ],
        ),
      ),
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

  ///thanks google
  Widget _camera(BuildContext context) {
    final camera = _cameraController.value;
    // fetch screen size
    final size = MediaQuery.of(context).size;

    // calculate scale depending on screen and camera ratios
    // this is actually size.aspectRatio / (1 / camera.aspectRatio)
    // because camera preview size is received as landscape
    // but we're calculating for portrait orientation
    var scale = size.aspectRatio * camera.aspectRatio;

    // to prevent scaling down, invert the value
    if (scale < 1) scale = 1 / scale;

    return Transform.scale(
      scale: scale,
      child: Center(
        child: CameraPreview(_cameraController),
      ),
    );
  }

  Future<void> takePhoto(BuildContext context) async {
    final image = await _cameraController.takePicture();
    await Images.savePhoto(image.path);
    BlocProvider.of<CameraBloc>(context).add(const CameraEvent.newJoke());
  }
}
