import 'package:tictactoe_multiplayer_game/core/network_result.dart';

typedef NetworkCallback = void Function(NetworkResult result);

abstract class IInternetManager {
  void handleNetworkChange(NetworkCallback onChange);
  void dispose();
}
