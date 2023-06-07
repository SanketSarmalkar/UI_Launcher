import 'package:android_intent_plus/android_intent.dart';

class PermissionServices {
  void launchWithCategories() {
    const intent = AndroidIntent(
      action: 'android.intent.action.MAIN',
      category: 'android.intent.category.HOME',
      package: 'com.example.android_launcher',
      componentName: 'com.example.targetapp.MainActivity',
    );

    const intentd = AndroidIntent(
      action: 'android.intent.action.MAIN',
      category: 'android.intent.category.DEFAULT',
      package: 'com.example.android_launcher',
      componentName: 'com.example.targetapp.MainActivity',
    );

    intent.launch();
    intentd.launch();
  }
}
