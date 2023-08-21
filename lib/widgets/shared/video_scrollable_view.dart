import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/widgets/shared/video_buttons.dart';


class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({
  super.key,
  required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
         final videoPost = videos[index];

         return Stack(
          children: [
            //Video Player + gradiente

            //Botones
            Positioned(
              bottom: 20,
              right: 40,
              child: VideoButtons(video: videoPost,))
          ],
         );
      },
    );
  }
}