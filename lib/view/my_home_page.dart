import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vedio_player/view/videio_player_page.dart';

import '../controller/home_page_controller.dart';
import '../widgets/videioCard.dart';

class MyHomePage extends StatelessWidget {
  var controller = Get.put(HomePageController());
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            floating: true,
            leadingWidth: 1000.0,
            leading: Padding(
              padding: EdgeInsets.only(left: 12.0, top: 12.0),
              child: Text(
                'Trending Videos',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Obx(
            () => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final video = controller.videoList[index];
                  return controller.videoList.isEmpty
                      ? const CircularProgressIndicator()
                      : InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPlayerPage(
                                          videoModel:
                                              controller.videoList[index],
                                        )));
                          },
                          child: VideoCard(
                            videoModel: video,
                          ),
                        );
                },
                childCount: controller.videoList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
