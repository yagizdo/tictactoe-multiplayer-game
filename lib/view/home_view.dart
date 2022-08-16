import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe_multiplayer_game/constants/app_constants.dart';
import 'package:tictactoe_multiplayer_game/core/network_manager.dart';
import 'package:tictactoe_multiplayer_game/core/network_result.dart';

import '../constants/app_assets.dart';
import '../constants/app_theme.dart';
import '../widget/home_view/menu_buttons_section.dart';
import '../widget/home_view/settings_fab_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final NetworkManager _networkManager;
  NetworkResult? _networkResult;

  @override
  void initState() {
    super.initState();
    _networkManager = NetworkManager();
    _networkManager.handleNetworkChange((result) {
      setState(() {
        _networkResult = result;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Settings Fab Button
      floatingActionButton: SettingsFabButton(
        backgroundColor: purple,
        function: () {},
        child: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),

      // Custom Background
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [linearColorOne, linearColorTwo]),
          image: DecorationImage(
            image: AssetImage(AppAsset.backgroundImage),
            fit: BoxFit.fill,
          ),
        ),

        // Child
        child: Column(
          children: [
            height67,
            // Logo Placeholder
            SizedBox(width: 173.w, height: 173.h, child: const Placeholder()),
            height40,
            _networkResult == NetworkResult.off
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Offline Mode',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      IconButton(
                          onPressed: () {
                            // todo little info dialog with smart dialog package
                          },
                          icon: const Icon(
                            Icons.info,
                            color: white,
                          ))
                    ],
                  )
                : const SizedBox(),
            height56,
            const MenuButtonsSection()
          ],
        ),
      ),
    );
  }
}
