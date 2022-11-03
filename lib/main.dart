import 'package:clone_noise_streaming_konten_audio/core.dart';
import 'package:flutter/material.dart';
import 'package:clone_noise_streaming_konten_audio/setup.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './riverpod_util.dart';
import 'module/client/home/view/home_view.dart';

void main() async {
  await initialize();

  Widget mainView = DashboardView();

  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.navigatorKey,
        home: mainView,
      ),
    ),
  );
}
