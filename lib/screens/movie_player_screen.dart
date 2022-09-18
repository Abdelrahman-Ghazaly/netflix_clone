import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_flutter/assets.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';
import 'package:chewie/chewie.dart';

class MoviePlayer extends StatefulWidget {
  const MoviePlayer({Key? key}) : super(key: key);

  @override
  _MoviePlayerState createState() => _MoviePlayerState();
}

class _MoviePlayerState extends State<MoviePlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late Future<void> _future;

  Future<void> initVideoPlayer() async {
    await _videoPlayerController.initialize();
    setState(() {
      _chewieController = ChewieController(
        aspectRatio: MediaQuery.of(context).size.width /
            MediaQuery.of(context).size.height,
        videoPlayerController: _videoPlayerController,
        autoPlay: true,
        looping: false,
        fullScreenByDefault: true,
        materialProgressColors: ChewieProgressColors(
          playedColor: Colors.red,
          handleColor: Colors.white,
          backgroundColor: Colors.grey,
          bufferedColor: Colors.white30,
        ),
      );
    });
  }

  void enterScreen() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    Wakelock.enable;
  }

  void exitScreen() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Wakelock.disable;
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }

  @override
  void initState() {
    super.initState();
    enterScreen();
    _videoPlayerController =
        VideoPlayerController.network(Assets.sintelVideoUrl);
    _future = initVideoPlayer();
  }

  @override
  void dispose() {
    exitScreen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (_videoPlayerController.value.isInitialized) {
              return Chewie(
                controller: _chewieController,
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
