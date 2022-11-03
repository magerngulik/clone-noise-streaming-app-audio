import 'package:card_swiper/card_swiper.dart';
import 'package:clone_noise_streaming_konten_audio/core.dart';
import 'package:clone_noise_streaming_konten_audio/shared/circle_avatar/circle_avatar_border.dart';
import 'package:clone_noise_streaming_konten_audio/shared/container/con_play_text%20tree_value.dart';
import 'package:clone_noise_streaming_konten_audio/shared/container/con_play_text.dart';
import 'package:clone_noise_streaming_konten_audio/shared/navigation_text/nav_simple_icon_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../shared/grub_navigation/grub_nav_text.dart';
import '../../../../shared/navigation_text/nav_simple_button.dart';
import '../controller/home_controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    HomeController controller = ref.watch(homeController);
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: const BorderRadius.all(
              Radius.circular(
                10.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 20.0,
              ),
              Text(
                "Cari konten, kreator, dll",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[500],
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 24.0,
                color: Colors.grey[500],
              ),
              const SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ),
        leading: Container(
          height: 20,
          width: 20,
          color: Colors.red,
          child: Image.asset(
            "assets/image/logo/logo.png",
            fit: BoxFit.scaleDown,
            height: 10,
            width: 10,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_on_outlined,
              size: 32,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.black,
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 40.0,
                  child: ListView.builder(
                    itemCount: controller.tabs.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = controller.tabs[index];
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: 100.0,
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.only(right: 10.0),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  "${item['title']}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: (item['isActive'] == true)
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                              Spacer(),
                              (item['isActive'] == true)
                                  ? Container(
                                      height: 3.0,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                      ),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    var itemBanner = controller.banner[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItemdetailView(
                                    item: itemBanner,
                                  )),
                        );
                      },
                      child: Image.asset(
                        itemBanner['image'],
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                  itemCount: controller.banner.length,
                  pagination: SwiperPagination(),
                  viewportFraction: 1,
                  scale: 1,
                  autoplay: true,
                ),
              ),
              GrubNavText(
                onChanged: () {},
                value: "Noise Clips",
                valueIcon: Icons.arrow_forward_ios,
                label: "Noiseclips",
                fsvalue: 20,
              ),
              SizedBox(
                height: 110.0,
                child: ListView.builder(
                  itemCount: controller.banner.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = controller.banner[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CircleAvatarWidgetBorder(
                        onChanged: () {},
                        image: item['image'],
                        title: item['host'],
                        borderradius: 40,
                        radius: 40,
                        titlesize: 12,
                      ),
                    );
                  },
                ),
              ),
              GrubNavText(
                onChanged: () {},
                value: "Lanjut dengerin",
                valueIcon: Icons.arrow_forward_ios,
                label: "lanjutdengerin",
                fsvalue: 20,
              ),
              SizedBox(
                height: 230.0,
                child: ListView.builder(
                  itemCount: controller.banner.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = controller.banner[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container_play_text(
                          onChanged: () {},
                          image: item['image'],
                          title: item['title'],
                          subtitle: item['chanel']),
                    );
                  },
                ),
              ),
              GrubNavText(
                onChanged: () {},
                value: "Episode Terbaru",
                valueIcon: Icons.arrow_forward_ios,
                label: "episodebaru",
                fsvalue: 20,
              ),
              SizedBox(
                height: 230.0,
                child: ListView.builder(
                  itemCount: controller.banner.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var item = controller.banner[index];
                    return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container_play_text_tree_value(
                          onChanged: () {},
                          image: item['image'],
                          title: item['title'],
                          subtitle: item['chanel'],
                          pointitle: item['date_upload'],
                          pointitlefz: 12,
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
