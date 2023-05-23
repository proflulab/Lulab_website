import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class LuLabPage extends StatefulWidget {
  const LuLabPage({Key? key}) : super(key: key);

  @override
  _LuLabPageState createState() => _LuLabPageState();
}

class _LuLabPageState extends State<LuLabPage> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("res/images/video.mp4");
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9, // 设置视频的宽高比
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 16/7.5,
                  child: Chewie(
                    controller: _chewieController,
                  ),
                ),
                Positioned(
                  top: 450,
                  child: Column(
                    children: [
                      const Text(
                        'The New Education',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'in AI age',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        '\nAll work and no play makes Jack a dull boy\n',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your action here
                        },
                        child: Text(
                          'Learn More',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ), // Add spacing between the video and the next widget
           const CustomWidget(), 
           const AnotherWidget(),
           const LearnWidget(),// Add your custom widget here
          ],
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 150,
      child: const Center(
        child: Text(
          'Our Clubs',
          style: TextStyle(
            fontSize:60,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
class AnotherWidget extends StatelessWidget {
  const AnotherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: const BoxDecoration(
      
      ),
      child: Stack(
        children: [
          Positioned(
            top:150, // 调整为所需的位置
            left:400, // 调整为所需的位置
            child: Container(
              width: 300,
              color: Colors.black,
              child: Column(
                children:const  [
                   Text(
                    "\n\n\n\n\nMetaverse Club",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height:50),
                  Text(
                    '''
Journey into the Metaverse and
transform your gaming passion
into game creation. Join our
vibrant community, learn Lua
programming, and unlock the
power of AI technologies like
GPT. Embrace innovation and be
a game-changer!
''',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class LearnWidget extends StatelessWidget {
  const LearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
  Column(
      children: [Image.asset("res/images/laa.png", fit: BoxFit.fill)]);
  }
}

