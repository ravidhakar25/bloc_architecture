import 'package:flutter/foundation.dart';

printLog(Object? message) {
  if (kDebugMode) {
    int defaultPrintLength = 1000;
    if (message == null || message.toString().length <= defaultPrintLength) {
      print(message);
    } else {
      String log = message.toString();
      int start = 0;
      int endIndex = defaultPrintLength;
      int logLength = log.length;
      int tmpLogLength = log.length;
      while (endIndex < logLength) {
        print(log.substring(start, endIndex));
        endIndex += defaultPrintLength;
        start += defaultPrintLength;
        tmpLogLength -= defaultPrintLength;
      }
      if (tmpLogLength > 0) {
        print(log.substring(start, logLength));
      }
    }
    // print(message);
  }
}
