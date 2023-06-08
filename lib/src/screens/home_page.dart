import 'dart:io';

import 'package:android_launcher/src/components/bottom_navigation.dart';
import 'package:android_launcher/src/components/home_body.dart';
import 'package:android_launcher/src/components/side_bar_app_navigation.dart';
import 'package:android_launcher/src/services/device_apps_controller.dart';
import 'package:floating_frosted_bottom_bar/app/frosted_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DeviceAppController deviceAppController = Get.put(DeviceAppController());

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.blueGrey.shade900,
      ));
    }
    deviceAppController.fetchInstalledApps();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.transparent,
        child: SideBarAppNavigation(),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: FrostedBottomBar(
        opacity: 1,
        bottomBarColor: Colors.transparent,
        width: MediaQuery.of(context).size.width * 0.9,
        borderRadius: BorderRadius.circular(500),
        child:
            BottomNavigation(installedApps: deviceAppController.InstalledApp),
        body: (context, controller) => const HomeBody(),
      ),
    );
  }
}
