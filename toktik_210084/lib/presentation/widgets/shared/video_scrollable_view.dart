// import 'package:flutter/material.dart';
// import 'package:toktik_210084/domain/entities/video_post.dart';
// import 'package:toktik_210084/presentation/widgets/shared/video_buttons.dart';

// class VideoScrollableView extends StatelessWidget{
//   final List<VideoPost> videos;

//   const VideoScrollableView({
//     super.key,
//     required this.videos
//   });

//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       scrollDirection: Axis.vertical,
//       physics: const BouncingScrollPhysics(),
//       itemCount: videos.length,
//       itemBuilder: (context, index){
//         final VideoPost videoPost = videos[index];

//         return Stack(
//           children: [
//             //video Player + gradiente 
//             Positioned(
//               bottom: 40,
//               right: 20,
//               child: VideoButtons(video: videoPost),
//             ),
//             //Botones
//           ],
//         );
//       },
//     );
//   }
// }

// // class Positioned extends StatelessWidget {
// //   const Positioned({
// //     super.key,
// //     required this.videoPost,
// //   });

// //   final VideoPost videoPost;

// //   @override
// //   Widget build(BuildContext context) {
// //     return VideoButtons(video: videoPost);
// //   }
// // }