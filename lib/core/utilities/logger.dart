import 'dart:developer' as dev;

///custom logger so we can control and change where logs go
enum LogLevel { Verbos, Dev, Warning, Error }

class Logger {
  static void log(String message, {LogLevel level = LogLevel.Verbos}) {
    dev.log(message);
  }
}
