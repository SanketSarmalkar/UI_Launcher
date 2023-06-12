import 'dart:ui';

import 'package:flutter/material.dart';

class BottomSettingSheet extends StatefulWidget {
  const BottomSettingSheet({super.key});

  @override
  State<BottomSettingSheet> createState() => _BottomSettingSheetState();
}

class _BottomSettingSheetState extends State<BottomSettingSheet> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        color: Colors.white.withOpacity(0.1),
        height: height * 0.6,
      ),
    );
  }
}
