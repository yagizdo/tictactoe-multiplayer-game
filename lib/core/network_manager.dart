import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:tictactoe_multiplayer_game/core/i_network_manager.dart';
import 'package:tictactoe_multiplayer_game/core/network_result.dart';

class NetworkManager extends INetworkManager {
  late final InternetConnectionChecker _connectionChecker;
  StreamSubscription<InternetConnectionStatus>? _subscription;

  NetworkManager() {
    _connectionChecker = InternetConnectionChecker.createInstance(
      checkInterval: const Duration(seconds: 3),
    );
  }

  @override
  void handleNetworkChange(NetworkCallback onChange) {
    _subscription = _connectionChecker.onStatusChange.listen((event) {
      onChange.call(
        NetworkResult.checkConnectivityResult(event),
      );
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }
}
