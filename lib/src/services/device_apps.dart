import 'package:device_apps/device_apps.dart';

class DeviceApp {
  void fetchApps() async {
    List<Application> apps = await DeviceApps.getInstalledApplications(
      includeAppIcons: true,
      includeSystemApps: true,
      onlyAppsWithLaunchIntent: true,
    );
    apps.forEach((element) {
      print(element.appName);
    });
  }
}
