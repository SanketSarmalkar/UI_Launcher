import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarDeviceApp extends StatefulWidget {
  final Application? application;
  const BottomNavigationBarDeviceApp({Key? key, required this.application})
      : super(key: key);

  @override
  State<BottomNavigationBarDeviceApp> createState() =>
      _BottomNavigationBarDeviceAppState();
}

class _BottomNavigationBarDeviceAppState
    extends State<BottomNavigationBarDeviceApp> {
  @override
  Widget build(BuildContext context) {
    //final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    final icon = (widget.application as ApplicationWithIcon?)?.icon;

    return ClipRRect(
      borderRadius: BorderRadius.circular(width * 0.035),
      child: icon != null
          ? Image.memory(
              icon,
              width: width * 0.16,
              height: width * 0.16,
            )
          : const SizedBox(), // Replace with your desired fallback widget
    );
  }
}
