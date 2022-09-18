import 'package:flutter/material.dart';
import 'package:netflix_flutter/data/data.dart';
import 'package:netflix_flutter/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:netflix_flutter/providers/providers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        context.read<AppBarProvider>().setOffset(_scrollController!.offset);
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey.shade900,
          child: const Icon(Icons.cast),
          onPressed: () {}),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, kAppBarHeight),
        child: HomeScreenAppBar(
          scrollOffset: context.watch<AppBarProvider>().scrollOffset,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: ContentHeader(featuredContent: sintelContent),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: Previews(
                key: const PageStorageKey('previews'),
                title: 'Previews',
                contentList: previews,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: const PageStorageKey('myList'),
              title: 'My List',
              contentList: myList,
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              key: const PageStorageKey('netflixOriginals'),
              title: 'Netflix Originals',
              contentList: originals,
              isOriginals: true,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 20.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                key: const PageStorageKey('trending'),
                title: 'Trending',
                contentList: trending,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
