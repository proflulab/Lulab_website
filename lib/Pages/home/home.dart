import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import '../items/end_about.dart';

class LuLabPage extends StatefulWidget {
  const LuLabPage({Key? key}) : super(key: key);

  @override
  State<LuLabPage> createState() => _LuLabPageState();
}

class _LuLabPageState extends State<LuLabPage> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/images/video.mp4");
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9,
      autoPlay: true,
      looping: true,
      showControls: false,
    );
    _controller.setVolume(0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 2000,
                  child: Image.asset(
                    'assets/images/image3.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final screenWidth = constraints.maxWidth;

                    // 根据屏幕宽度设置初始字体大小
                    double fontSize = screenWidth >= 600 ? 100 : 50;

                    if (screenWidth < 600) {
                      // 在较小屏幕上进一步调整字体大小
                      fontSize = fontSize * (screenWidth / 600); // 600是一个基准屏幕宽度
                    }

                    return Column(
                      children: [
                        Text(
                          'The New Education',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'in AI age',
                          style: TextStyle(
                            fontSize: screenWidth >= 600 ? 40 : fontSize / 2,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'All work and no play makes Jack a dull boy',
                          style: TextStyle(
                            fontSize: screenWidth >= 600 ? 30 : fontSize / 3,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            ea() // Add your custom widget here
          ],
        ),
      ),
    );
  }
}
