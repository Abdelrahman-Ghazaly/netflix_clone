import 'package:flutter/material.dart';

class Content {
  final String name;
  final String posterUrl;
  final String? backdrop;
  final String? releaseDate;
  final int? id;
  final String? titleImageUrl;
  final String? videoUrl;
  final String? description;
  final Color? color;
  final List<String>? genre;

  const Content({
    required this.name,
    required this.posterUrl,
    this.id,
    this.titleImageUrl,
    this.videoUrl,
    this.description,
    this.color,
    this.genre,
    this.backdrop,
    this.releaseDate,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      id: json['id'],
      name: json['title'] ?? json['name'],
      posterUrl: json['poster_path'] == null
          ? 'https://thumbs.dreamstime.com/b/movie-video-film-simple-colorful-icon-isolated-black-movie-video-film-simple-colorful-icon-isolated-black-196449064.jpg'
          : 'https://image.tmdb.org/t/p/original/' + json['poster_path'],
      backdrop: json['backdrop_path'] == null
          ? 'https://thumbs.dreamstime.com/b/movie-video-film-simple-colorful-icon-isolated-black-movie-video-film-simple-colorful-icon-isolated-black-196449064.jpg'
          : 'https://image.tmdb.org/t/p/original/' + json['backdrop_path'],
      description: json['overview'],
      releaseDate: json['release_date'] ?? '',
    );
  }
}
