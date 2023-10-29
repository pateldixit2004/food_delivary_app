import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary_app/counter_home.dart';
import 'package:food_delivary_app/counter_provider.dart';
import 'package:food_delivary_app/screen/provider/home_provider.dart';
import 'package:food_delivary_app/splesh_screen/provider/splesh_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => SpleshProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => CounterProvider(),
          )
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // routes: appRoutes,
          routes: {
            "/": (p0) => HomeScreebCounter(),
          },
        ),
      ),
    ),
  );
}
