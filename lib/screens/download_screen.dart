import 'package:flutter/material.dart';
import 'package:netflix_flutter/widgets/widgets.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, kAppBarHeight),
        child: const CustomAppBar(
          title: 'My Downloads',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: const [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Smart Downloads',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    'On',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 60.0),
          Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.file_download,
                    size: 60,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Never be without Netflix',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Download shows and movies so you\'ll never be without something to watch even when you are offline.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    height: 1.4,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 50,
                width: screenSize.width * 0.85,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    'See What You Can Download',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
