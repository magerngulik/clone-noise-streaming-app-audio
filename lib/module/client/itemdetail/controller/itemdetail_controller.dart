import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clone_noise_streaming_konten_audio/riverpod_util.dart';
import '../view/itemdetail_view.dart';

class ItemdetailController extends ChangeNotifier implements HyperController {
  ItemdetailView? view;
}

final itemdetailController =
    ChangeNotifierProvider<ItemdetailController>((ref) {
  return ItemdetailController();
});