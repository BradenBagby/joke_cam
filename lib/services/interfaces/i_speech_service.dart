abstract class ISpeechService {
  Future<void> speak(String text);
  Future<void> laugh();
  Future<void> cameraShutter();
}
