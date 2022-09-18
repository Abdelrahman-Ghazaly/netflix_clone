// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({
    Key? key,
    required this.screenSize,
    required this.movieData,
    required this.tvShowData,
    this.searchData,
  }) : super(key: key);

  final Size screenSize;
  final movieData;
  final tvShowData;
  final dynamic searchData;

  @override
  Widget build(BuildContext context) {
    final double contentWidth = (screenSize.width - 100) / 2;

    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (searchData != null) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 18,
              left: 18,
            ),
            child: CustomScrollView(
              cacheExtent: 2000,
              slivers: [
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ContentBox(
                        contentWidth: contentWidth,
                        content: searchData[index],
                      );
                    },
                    childCount: searchData.length,
                  ),
                ),
              ],
            ),
          );
        }

        if (movieData != null && tvShowData != null) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 18,
              left: 18,
            ),
            child: CustomScrollView(
              cacheExtent: 2000,
              slivers: [
                const SliverPadding(
                  padding: EdgeInsets.only(bottom: 10),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Top Movies',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ContentBox(
                        contentWidth: contentWidth,
                        content: movieData[index],
                      );
                    },
                    childCount: 10,
                  ),
                ),
                const SliverPadding(
                  padding: EdgeInsets.only(bottom: 10),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Top TV Shows',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ContentBox(
                        contentWidth: contentWidth,
                        content: tvShowData[index],
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: SpinKitWave(
                color: Colors.red,
                size: 50,
              ),
            ),
          );
        }
      },
    );
  }
}

class ContentBox extends StatelessWidget {
  const ContentBox({
    Key? key,
    required this.contentWidth,
    required this.content,
  }) : super(key: key);

  final double contentWidth;
  final content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 230,
            width: contentWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(content.posterUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 230,
            width: contentWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black87, Colors.black45, Colors.transparent],
                stops: [0, 0.25, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -27,
            child: SizedBox(
              height: 60.0,
              child: Text(
                content.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
