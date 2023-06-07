import 'package:device_apps/device_apps.dart';
import 'package:get/get.dart';

class DeviceAppController extends GetxController {
  RxList<Application> InstalledApp = RxList<Application>();
  // Future<List<Application>> fetchApps() async {
  //   List<Application> apps = await DeviceApps.getInstalledApplications(
  //     includeAppIcons: true,
  //     includeSystemApps: true,
  //     onlyAppsWithLaunchIntent: true,
  //   );
  //   apps.forEach((element) {
  //     print(element.appName);
  //   });
  //   return apps;
  // }
  @override
  void onInit() {
    super.onInit();
    fetchInstalledApps();
  }

  void fetchInstalledApps() async {
    var installedApp = await DeviceApps.getInstalledApplications(
      includeAppIcons: true,
      includeSystemApps: true,
      onlyAppsWithLaunchIntent: true,
    );
    InstalledApp.assignAll(installedApp);
  }
}
