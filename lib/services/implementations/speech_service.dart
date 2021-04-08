import 'dart:io';
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:happy_camera/core/utilities/logger.dart';
import 'package:happy_camera/services/interfaces/i_speech_service.dart';

class SpeechService extends ISpeechService {
  AudioCache audioPlayer = AudioCache();

  @override
  Future<void> speak(String text) async {
    // TODO: implement test
    FlutterTts flutterTts = FlutterTts();
    await flutterTts.setSharedInstance(true);
    await flutterTts
        .setIosAudioCategory(IosTextToSpeechAudioCategory.playAndRecord, [
      IosTextToSpeechAudioCategoryOptions.allowBluetooth,
      IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
      IosTextToSpeechAudioCategoryOptions.mixWithOthers
    ]);
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.speak(text);
  }

  @override
  Future<void> laugh() async {
    final random = Random().nextInt(6);
    final laughTrack = "laugh_$random";
    final path = "audio/$laughTrack.mp3";
    Logger.log("Laugh: $path");
    await audioPlayer.play(path,);
  }
}
