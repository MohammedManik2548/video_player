import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import '../model/VideoModel.dart';

class HomePageController extends GetxController{


  var videoList = <Results>[].obs;

  @override
  void onInit() {
    getVideoData();
    super.onInit();
  }

  Future<void> getVideoData()async{

    Dio dio = Dio();
    String url = 'https://test-ximit.mahfil.net/api/trending-video/1';
    var paraData ={
      'page':'1',
    };
    try{
      EasyLoading.show(status: 'Loading...');
      var response = await dio.get(url, queryParameters: paraData);

      print('$runtimeType HIT_URL:-$url');
      print('Internet Connected: $runtimeType');
      print('$runtimeType:->Status Code  ${response.statusCode}');

      if(response.statusCode == 200){
        EasyLoading.dismiss();
        videoList.clear();
        var list = response.data['results'] as List;
        var tempList = list.map((e) => Results.fromJson(e)).toList();
        videoList.addAll(tempList);
        print('video_list_length: ${videoList.length}');
      }


    }catch(e, l){
      print(e);
      print(l);
    }finally{
      EasyLoading.dismiss();
    }

  }

}