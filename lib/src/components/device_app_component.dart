import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

class DeviceAppComponent extends StatefulWidget {
  final Application? application;
  const DeviceAppComponent({Key? key, required this.application})
      : super(key: key);

  @override
  State<DeviceAppComponent> createState() => _DeviceAppComponentState();
}

class _DeviceAppComponentState extends State<DeviceAppComponent> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      //padding: EdgeInsets.all(width * 0.01),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.05),
        color: Colors.white.withOpacity(0.1),
      ),
      child: Row(children: [
        Container(
          padding: EdgeInsets.only(
              top: height * 0.01,
              bottom: height * 0.01,
              right: width * 0.02,
              left: width * 0.06),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(width * 0.035),
            child: Image.memory(
              (widget.application as ApplicationWithIcon?)!.icon,
              width: width * 0.16,
              height: width * 0.16,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.application!.appName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
