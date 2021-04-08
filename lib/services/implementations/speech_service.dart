import 'dart:io';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:happy_camera/services/interfaces/i_speech_service.dart';


class SpeechService extends ISpeechService {
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
}
