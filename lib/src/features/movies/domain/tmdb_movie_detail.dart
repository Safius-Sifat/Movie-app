library core;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tmdb_movie_detail.freezed.dart';
part 'tmdb_movie_detail.g.dart';

@freezed
class TMDBMovieDetail with _$TMDBMovieDetail {
  const factory TMDBMovieDetail({
    required int id,
    required String title,
    required String overview,
    required int runtime,
    required List<Genre> genres,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'vote_average') double? rating,
  }) = _TMDBMovieDetail;

  factory TMDBMovieDetail.fromJson(Map<String, dynamic> json) =>
      _$TMDBMovieDetailFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
