import 'package:netflix_flutter/models/models.dart';
import 'package:netflix_flutter/services/networking.dart';

const baseURL = 'https://api.themoviedb.org/3/';
const imageBaseUrl = 'https://image.tmdb.org/t/p/original/';

class MovieData {
  late NetworkHelper networkHelper;

  Future getMostPopularMovies() async {
    networkHelper =
        NetworkHelper(url: '${baseURL}movie/popular?api_key=$apiKey');
    final movieData = await networkHelper.getData();
    List<dynamic> movies = movieData['results']
        .map((movieJson) => Content.fromJson(movieJson))
        .toList();
    return movies;
  }

  Future getMostPopularTvShows() async {
    networkHelper = NetworkHelper(url: '${baseURL}tv/popular?api_key=$apiKey');
    final tvShowData = await networkHelper.getData();
    List<dynamic> tvShows = tvShowData['results']
        .map((movieJson) => Content.fromJson(movieJson))
        .toList();
    return tvShows;
  }

  Future getDetailsId(String id) async {
    networkHelper = NetworkHelper(url: '${baseURL}Title$apiKey/$id');
    final movieData = await networkHelper.getData();
    return movieData;
  }

  Future getDetailsSearch(String? query) async {
    if (query != null && query != '') {
      networkHelper = NetworkHelper(
          url: '${baseURL}search/multi?api_key=$apiKey&query=$query');
      final searchedData = await networkHelper.getData();
      List<dynamic> searchedMovies = searchedData['results']
          .map((movieJson) => Content.fromJson(movieJson))
          .toList();
      return searchedMovies;
    }
  }

  Future getUpComing() async {
    networkHelper = NetworkHelper(
        url: '${baseURL}movie/upcoming?api_key=$apiKey&language=en-US&page=1');
    final upComingMovies = await networkHelper.getData();
    List<dynamic> list1 = upComingMovies['results']
        .map((movieJson) => Content.fromJson(movieJson))
        .toList();
    networkHelper = NetworkHelper(
        url: '${baseURL}tv/on_the_air?api_key=$apiKey&language=en-US');
    final upComingTv = await networkHelper.getData();
    List<dynamic> list2 = upComingTv['results']
        .map((movieJson) => Content.fromJson(movieJson))
        .toList();
    List<dynamic> upComing = list1 + list2;

    return upComing;
  }
}
