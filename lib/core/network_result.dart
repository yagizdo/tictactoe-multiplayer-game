import 'package:internet_connection_checker/internet_connection_checker.dart';

enum NetworkResult {
  on,
  off;

  static NetworkResult checkConnectivityResult(
      InternetConnectionStatus status) {
    switch (status) {
      case InternetConnectionStatus.connected:
        return NetworkResult.on;
      case InternetConnectionStatus.disconnected:
        return NetworkResult.off;
    }
  }
}
