import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vedio_player/utils/utils.dart';

import '../controller/video_player_controller.dart';
import '../model/VideoModel.dart';
import '../view/videio_player_page.dart';

class VideoPlayer extends StatelessWidget {
  final Results videoModel;
  var controller = Get.put(VideoPageController());

  VideoPlayer({super.key, required this.videoModel});
  @override
  Widget build(BuildContext context) {
    controller.initializedPlayer(videoModel.manifest??'');
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30.0),
      child: GetBuilder<VideoPageController>(
        init: VideoPageController(),
        builder: (controller) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            controller.chewieController != null &&
                    controller.chewieController!.videoPlayerController.value
                        .isInitialized
                ? Stack(
                    children: [
                      SizedBox(
                          height: 300,
                          width: double.infinity,
                          child: Chewie(
                              controller: controller.chewieController!)),
                      Positioned(
                        top: 50,
                        left: 10,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: InkWell(
                              onTap: () {
                                controller.chewieController!.pause();
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              )),
                        ),
                      ),
                    ],
                  )
                : Stack(
                  children: [
                    controller.chewieController != null &&
                            controller.chewieController!
                                .videoPlayerController.value.isInitialized
                        ? Chewie(controller: controller.chewieController!)
                        : Image.network(
                            videoModel.thumbnail ?? '',
                            height: 220.0,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            )),
                      ),
                    ),
                  ],
                ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Text(
                                videoModel.title ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                                child: Text(
                              '${videoModel.viewers ?? ''}views  .  ${Utils.dateFormatHyphen(videoModel.liveStatus.toString() ?? '')} days ago',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 14.0),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                width: Get.width,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 7.0),
                      height: 50,
                      width: Get.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: const Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Text(
                              'MASH ALLAH (12K)',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 50,
                      width: Get.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: const Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Flexible(
                              child: Text(
                                'LIKE (12K)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 50,
                      width: Get.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: const Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.share,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Flexible(
                              child: Text(
                                'SHARE',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      height: 50,
                      width: Get.width / 5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: const Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.flag_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                            Flexible(
                              child: Text(
                                'REPORT',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                      videoModel.channelImage ?? '',
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            videoModel.channelName ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Flexible(
                            child: Text(
                          '${videoModel.channelSubscriber ?? ''} Subscribers',
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 14.0),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ))
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Subscribe',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
