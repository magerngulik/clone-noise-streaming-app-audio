import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/button/btn_icon_with_text.dart';
import '../controller/itemdetail_controller.dart';

class ItemdetailView extends ConsumerWidget {
  final Map item;
  ItemdetailView({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    ItemdetailController controller = ref.watch(itemdetailController);
    controller.view = this;

    var kreator = item['kreator'] as List;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Itemdetail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    item['image'],
                  ),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Stack(
                children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 100.0,
                      ),
                      Center(
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                item['image'],
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Icon(
                        Icons.play_circle_outline_outlined,
                        size: 80.0,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 70.0,
              decoration: BoxDecoration(),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BtnIconWithText(
                        iconbtn: Icons.check,
                        title: "Telah Selesai",
                        iconfs: 28),
                    BtnIconWithText(
                        iconbtn: Icons.post_add_outlined,
                        title: "Tambah Ke Antrean",
                        iconfs: 28),
                    BtnIconWithText(
                        iconbtn: Icons.share, title: "Bagikan", iconfs: 28),
                    BtnIconWithText(
                        iconbtn: Icons.download, title: "Download", iconfs: 28),
                  ],
                ),
              ),
            ),
            Container(
              height: 50.0,
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Text(
                    item['date_upload'].toString(),
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: const [
                      Icon(
                        Icons.comment_outlined,
                        size: 15.0,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "35",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 35.0,
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 30.0,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Komedi",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          12.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Musik",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    margin: const EdgeInsets.only(left: 15.0),
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          10.0,
                        ),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/3pPYd14/freeban.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "original".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 10.0,
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          "BERIZIK".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                        const Text(
                          "40.1rb Subcribers",
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15.0),
                    height: 30.0,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          5.0,
                        ),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[600]!,
                      ),
                    ),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.person_add,
                          size: 18.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Subcribe",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Kreator",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "Komentar",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                kreator[0]['username'].toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              width: MediaQuery.of(context).size.width,
              child: Text(
                kreator.first['username'].toString(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
