import 'package:flutter/material.dart';
import 'package:toktik_210084/infrastruucture/providers/local_video_model.dart';
import 'package:toktik_210084/domain/entities/video_post.dart';
import 'package:toktik_210084/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo: cargar videos
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
    .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    .toList();

    videos.addAll(newVideos);
    initialLoading=false;
    notifyListeners();
  }
}