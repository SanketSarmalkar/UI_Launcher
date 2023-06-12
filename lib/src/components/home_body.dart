import 'package:android_launcher/src/components/bottom_sheet.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  void _showSettingPanel() {
    showModalBottomSheet(
        //useSafeArea: true,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return const BottomSettingSheet();
        });
  }

  @override
  Widget build(BuildContext context) {
    // PermissionServices permissionServices = PermissionServices();
    // permissionServices.launchWithCategories();
    return GestureDetector(
      onHorizontalDragStart: (x) {
        _showSettingPanel();
      },
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            scale: 1.5,
          ),
        ),
      ),
    );
  }
}
