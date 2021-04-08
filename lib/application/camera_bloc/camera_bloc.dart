import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happy_camera/core/utilities/logger.dart';
import 'package:happy_camera/core/utilities/permissions.dart';
import 'package:happy_camera/domain/jokes/joke/joke.dart';
import 'package:happy_camera/services/implementations/jokes/dad_jokes_service.dart';
import 'package:happy_camera/services/implementations/speech_service.dart';
import 'package:happy_camera/services/interfaces/i_jokes_service.dart';
import 'package:happy_camera/services/interfaces/i_speech_service.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final IJokesService _jokesService;
  final ISpeechService _speechService;

  CameraBloc()
      : _jokesService = DadJokesService(),
        _speechService = SpeechService(),
        super(const CameraState()) {
    add(const CameraEvent.checkPermissions(ask: false));
    add(const CameraEvent.newJoke());
  }

  @override
  Stream<CameraState> mapEventToState(
    CameraEvent event,
  ) async* {
    yield* event.map(
        checkPermissions: _checkPermissions,
        takePhoto: _takePhoto,
        newJoke: _newJoke);
  }

  Future<Joke?> loadJoke() async {
    final jokeText = await _jokesService.getJoke();
    if (jokeText == null) {
      return null;
    }
    //TODO: get audio and duration
    return Joke(
        text: jokeText, used: false, duration: const Duration(seconds: 2));
  }

  Stream<CameraState> _newJoke(_NewJoke event) async* {
    yield state.copyWith(fetchingJoke: true, error: null, takePhoto: false);
    final joke = await loadJoke();
    yield state.copyWith(
        fetchingJoke: false,
        joke: joke,
        error: joke == null ? "Failed to fetch joke" : null);
  }

  Stream<CameraState> _takePhoto(_TakePhoto event) async* {
    final joke = state.joke;
    if (joke == null) {
      yield state.copyWith(error: "No joke loaded");
      return;
    }
    yield state.copyWith(sayingJoke: true);
    await _speechService.speak(joke.text);
    yield state.copyWith(sayingJoke: false, takePhoto: true);
  }

  Stream<CameraState> _checkPermissions(_CheckPermissions event) async* {
    final hasCameraPermission =
        await Permissions.camera(requestIfUnallowed: event.ask);
    final hasPhotoPermissions =
        await Permissions.library(requestIfUnallowed: event.ask);
    yield state.copyWith(
        permissions: hasCameraPermission && hasPhotoPermissions);
  }
}
