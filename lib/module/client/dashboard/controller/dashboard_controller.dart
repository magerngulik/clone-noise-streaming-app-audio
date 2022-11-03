import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_noise_streaming_konten_audio/riverpod_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends ChangeNotifier implements HyperController {
  DashboardView? view;
  int selectedIndex = 0;

  void move() {
    notifyListeners();
  }
}

final dashboardController = ChangeNotifierProvider<DashboardController>((ref) {
  return DashboardController();
});
