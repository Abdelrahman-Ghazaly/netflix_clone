// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:netflix_flutter/services/services.dart';
import 'package:netflix_flutter/widgets/widgets.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  final MovieData movieData = MovieData();
  var contentList;

  Future updateData() async {
    contentList = await movieData.getUpComing();
    setState(() {});
  }

  @override
  void initState() {
    updateData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, kAppBarHeight),
        child: const CustomAppBar(
          title: 'Coming Soon',
        ),
      ),
      body: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (contentList != null) {
            contentList.shuffle();
            return CustomScrollView(
              slivers: [
                const SliverPadding(
                  padding: EdgeInsets.only(bottom: 10),
                  sliver: SliverToBoxAdapter(
                    child: NotificationBar(),
                  ),
                ),
                SliverToBoxAdapter(
                    child: ComingSoonCards(
                  contentList: contentList,
                )),
              ],
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
      ),
    );
  }
}
