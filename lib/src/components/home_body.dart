import 'package:android_launcher/src/services/device_apps_controller.dart';
import 'package:android_launcher/src/services/permission_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    // PermissionServices permissionServices = PermissionServices();
    // permissionServices.launchWithCategories();
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          scale: 1.5,
        ),
      ),
    );
  }
}
