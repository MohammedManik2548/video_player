import 'package:chewie/chewie.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../model/VideoModel.dart';

class VideoPageController extends GetxController{

  late Results videoModel;
  var videoList = <Results>[].obs;
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    // getVideoData();
    initializedPlayer();
    super.onInit();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController!.dispose();
    super.dispose();
  }

  Future<void> initializedPlayer() async{
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse('http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'));

    await Future.wait([videoPlayerController.initialize()]);
    chewieController=ChewieController(
        videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.red,
        handleColor: Colors.cyanAccent,
        backgroundColor: Colors.yellow,
        bufferedColor: Colors.lightGreen
      ),
      placeholder: Container(
        color: Colors.lightGreen,
      ),
      autoInitialize: true,
    );
    update();
  }

}