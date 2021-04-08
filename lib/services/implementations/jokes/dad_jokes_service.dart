import 'package:happy_camera/dao/jokes/dad_jokes.dart';
import 'package:happy_camera/services/interfaces/i_jokes_service.dart';

class DadJokesService implements IJokesService {
  @override
  Future<String?> getJoke() {
    return DadJokes.getJoke();
  }
}
