import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../model/VideoModel.dart';

class VideoPageController extends GetxController{
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    // initializedPlayer();
    super.onInit();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  Future<void> initializedPlayer(String url) async{
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url));

    // videoPlayerController..initialize().then((_){
    //   videoPlayerController.play();
    // });
    await Future.wait([videoPlayerController.initialize()]);
    chewieController=ChewieController(
        videoPlayerController: videoPlayerController,
      autoPlay: true,
      // looping: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.red,
        // backgroundColor: Colors.yellow,
        bufferedColor: Colors.grey
      ),
      // placeholder: Container(
      //   color: Colors.lightGreen,
      // ),
      autoInitialize: true,
    );
    update();
  }

}