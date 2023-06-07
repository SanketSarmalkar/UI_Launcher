import 'package:android_launcher/src/components/bottom_navigation.dart';
import 'package:android_launcher/src/components/home_body.dart';
import 'package:floating_frosted_bottom_bar/app/frosted_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: FrostedBottomBar(
        opacity: 1,
        bottomBarColor: Colors.transparent,
        width: MediaQuery.of(context).size.width * 0.9,
        borderRadius: BorderRadius.circular(500),
        child: const BottomNavigation(),
        body: (context, controller) => const HomeBody(),
      ),
    );
  }
}
