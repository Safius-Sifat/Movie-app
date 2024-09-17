// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TMDBMovieDetailImpl _$$TMDBMovieDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$TMDBMovieDetailImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      overview: json['overview'] as String,
      runtime: json['runtime'] as int,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      rating: (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TMDBMovieDetailImplToJson(
        _$TMDBMovieDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'vote_average': instance.rating,
    };

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
