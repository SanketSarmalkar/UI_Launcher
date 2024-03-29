import 'package:android_launcher/src/components/bottom_navigation_bar_device_app.dart';
import 'package:android_launcher/src/services/device_apps_controller.dart';
import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatefulWidget {
  final List<Application> installedApps;
  const BottomNavigation({Key? key, required this.installedApps})
      : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  DeviceAppController deviceAppController = Get.put(DeviceAppController());
  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context)
        .size
        .width; // * MediaQuery.of(context).devicePixelRatio;
    return /* Container(
      color: Colors.transparent,
      height: height * 0.08,
      padding: EdgeInsets.only(
        bottom: height * 0.01,
        top: height * 0.01,
        left: width * 0.05,
        right: width * 0.05,
      ),
      child: */
        Container(
      //height: height * 0.068,
      //width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.08),
        //border: Border.all(color: Colors.grey[300]!, width: width * 0.005),
        color: Colors.transparent,
      ),
      child: Obx(
        () => Row(
          children: [
            Expanded(
              flex: 1,
              child: MaterialButton(
                  shape: const CircleBorder(),
                  onPressed: () {
                    final youtubeApp = widget.installedApps.firstWhereOrNull(
                      (element) => element.appName == "YouTube",
                    );
                    if (youtubeApp != null) {
                      DeviceApps.openApp(youtubeApp.packageName);
                    }
                  },
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Icon(Icons.abc),
                  //     Text(
                  //       'Home',
                  //       style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: width * 0.025,
                  //         //fontWeight: FontWeight.bold,
                  //       ),
                  //     )
                  //   ],
                  // ),
                  child: BottomNavigationBarDeviceApp(
                    application:
                        deviceAppController.InstalledApp.firstWhereOrNull(
                            (element) => element.appName == "YouTube"),
                  )),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                shape: const CircleBorder(),
                onPressed: () {
                  final youtubeApp = widget.installedApps.firstWhereOrNull(
                    (element) => element.appName == "Phone",
                  );
                  if (youtubeApp != null) {
                    DeviceApps.openApp(youtubeApp.packageName);
                  }
                },
                child: BottomNavigationBarDeviceApp(
                    application:
                        deviceAppController.InstalledApp.firstWhereOrNull(
                            (element) => element.appName == "Phone")),
              ),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                  shape: const CircleBorder(),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const RewardPage()));
                    final youtubeApp = widget.installedApps.firstWhereOrNull(
                      (element) => element.appName == "Camera",
                    );
                    if (youtubeApp != null) {
                      DeviceApps.openApp(youtubeApp.packageName);
                    }
                  },
                  child: BottomNavigationBarDeviceApp(
                    application:
                        deviceAppController.InstalledApp.firstWhereOrNull(
                            (element) => element.appName == "Camera"),
                  )),
            ),
            Expanded(
              flex: 1,
              child: MaterialButton(
                  shape: const CircleBorder(),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const WalletPage()));
                    final youtubeApp = widget.installedApps.firstWhereOrNull(
                      (element) => element.appName == "Chrome",
                    );
                    if (youtubeApp != null) {
                      DeviceApps.openApp(youtubeApp.packageName);
                    }
                  },
                  child: BottomNavigationBarDeviceApp(
                    application:
                        deviceAppController.InstalledApp.firstWhereOrNull(
                            (element) => element.appName == "Chrome"),
                  )),
            ),
          ],
        ),
      ),
      //),
    );
  }
}
