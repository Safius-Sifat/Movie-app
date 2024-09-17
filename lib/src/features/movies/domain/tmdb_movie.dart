library core;

import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tmdb_movie.freezed.dart';
part 'tmdb_movie.g.dart';

@freezed
class TMDBMovie with _$TMDBMovie {
  const factory TMDBMovie({
    required int id,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
  }) = _TMDBMovie;

  factory TMDBMovie.fromJson(Map<String, dynamic> json) =>
      _$TMDBMovieFromJson(json);
}
