import 'dart:ui';

import 'package:android_launcher/src/components/device_app_component.dart';
import 'package:android_launcher/src/services/device_apps_controller.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBarAppNavigation extends StatefulWidget {
  const SideBarAppNavigation({super.key});

  @override
  State<SideBarAppNavigation> createState() => _SideBarAppNavigationState();
}

class _SideBarAppNavigationState extends State<SideBarAppNavigation> {
  DeviceAppController deviceAppController = Get.put(DeviceAppController());
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Container(
            padding: EdgeInsets.only(bottom: height * 0.02),
            color: Colors.transparent,
            child: Text(
              "Installed Apps",
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView(
                children: <Widget>[
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: /*_contest!.length,*/
                          deviceAppController.InstalledApp.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.01,
                              bottom: height * 0.01,
                              left: width * 0.04),
                          child: GestureDetector(
                            onTap: () {
                              DeviceApps.openApp(deviceAppController
                                  .InstalledApp[index].packageName);
                            },
                            onLongPress: () {
                              DeviceApps.openAppSettings(deviceAppController
                                  .InstalledApp[index].packageName);
                            },
                            child: DeviceAppComponent(
                                application:
                                    deviceAppController.InstalledApp[index]),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
