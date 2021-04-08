import 'package:dio/dio.dart';
import 'package:happy_camera/core/utilities/logger.dart';

class DadJokes {
  static final BaseOptions options = BaseOptions(
    baseUrl: "https://icanhazdadjoke.com/",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  static final Dio dio = Dio(options)
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          Logger.log(
              "Dad jokes request: url(${options.uri}), data(${options.data}");
          options.headers['content-Type'] = 'application/json';
          options.headers['User-Agent'] = "happy_camera";
          return handler.next(options);
        },
      ),
    );

  static Future<String?> getJoke() async {
    try {
      final res = await dio.get("/slack");
      if (res.data == null || res.statusCode != 200) {
        return null;
      }
      final data = Map<String, dynamic>.from(res.data as Map<dynamic, dynamic>);
      final attachments =
          List<dynamic>.from(data["attachments"] as List<dynamic>);
      final newData =
          Map<String, dynamic>.from(attachments[0] as Map<dynamic, dynamic>);
      return newData["text"] as String;
    } catch (er) {
      Logger.log("failed to get dad joke: $er");
      return null;
    }
  }
}
