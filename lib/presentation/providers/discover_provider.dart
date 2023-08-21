import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{

  //TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos =[];

  Future<void> loadNextPage() async{
      await Future.delayed(Duration(milliseconds: 2000));
      
      
      //Video es una variable que tiene un Map<String,dynamic), entonces se le pasa al json.
      //Luego se pasa a la entidad VideoPost (que es lo que buscabamos).
      //Como es una lista, pero ahora es un iterable, solo falta pasarlo al toList() 
      //y ya tenemos una lista de videoPost
      final List<VideoPost> newVideos = videoPosts.map(
        (video) =>LocalVideoModel.fromJson(video).toVideoPostEntity()).toList(); 


      videos.addAll(newVideos);
      initialLoading = false;
      notifyListeners();
  }


}