import 'dart:io';
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:happy_camera/core/utilities/logger.dart';
import 'package:happy_camera/services/interfaces/i_speech_service.dart';

class SpeechService extends ISpeechService {
  AudioCache audioPlayer = AudioCache();
  AudioPlayer? current;

  final List<Map<String, String>> voiceOptions = [
    {"name": "Samantha", "locale": "en-US"},
    {"name": "Karen", "locale": "en-AU"},
    {"name": "Rishi", "locale": "en-IND"},
    {"name": "Moira", "locale": "en-IRL"},
    {"name": "Tessa", "locale": "en-ZAF"},
    {"name": "Daniel", "locale": "en-UK"}
  ];

  @override
  Future<void> speak(String text) async {
    current?.stop();
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
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch((Random().nextDouble() * 1.5) + 0.5);
    try {
      final voice = voiceOptions[Random().nextInt(voiceOptions.length)];
      Logger.log(voice.toString());
      await flutterTts.setVoice(voice);
    } catch (er) {}
    await flutterTts.speak(text);
  }

  @override
  Future<void> laugh() async {
    final random = Random().nextInt(6);
    final laughTrack = "laugh_$random";
    final path = "audio/$laughTrack.mp3";
    Logger.log("Laugh: $path");
    current = await audioPlayer.play(
      path,
    );
  }
}
