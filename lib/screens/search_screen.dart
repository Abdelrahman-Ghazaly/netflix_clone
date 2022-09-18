// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:netflix_flutter/providers/providers.dart';
import 'package:netflix_flutter/services/services.dart';
import 'package:netflix_flutter/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final MovieData movieData = MovieData();
  var popularMovieData;
  var popularTvShowsData;
  var searchedMovieData;
  String? query;

  void updateData() async {
    popularMovieData = await movieData.getMostPopularMovies();
    popularTvShowsData = await movieData.getMostPopularTvShows();
    setState(() {});
  }

  void searchData() async {
    if (query != null && query != '') {
      searchedMovieData = await movieData.getDetailsSearch(query);
      popularTvShowsData = null;
      popularMovieData = null;
      setState(() {});
    } else {
      updateData();
    }
  }

  @override
  void initState() {
    super.initState();
    updateData();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    query = Provider.of<SearchBarProvider>(context, listen: true).query;
    searchData();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, kAppBarHeight),
        child: const SearchBar(),
      ),
      body: SearchBody(
        screenSize: screenSize,
        movieData: popularMovieData,
        tvShowData: popularTvShowsData,
        searchData: searchedMovieData,
      ),
    );
  }
}
