import 'package:realm/realm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_movie_app_riverpod/src/features/favorites/domain/favourite.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/domain/tmdb_movie_detail.dart';
import 'package:tmdb_movie_app_riverpod/src/utils/realm_provider.dart';
part 'favourite_repository.g.dart';

class FavouriteRepository {
  final Realm realm;
  FavouriteRepository({required this.realm});

  void addFavourite(TMDBMovieDetail movie) {
    realm.write(() {
      realm.add<Favourite>(Favourite(
        movie.id,
        movie.title,
        movie.posterPath ?? '',
        movie.releaseDate ?? '',
      ));
    });
  }

  void removeFavourite(TMDBMovieDetail movie) {
    var value = realm.find<Favourite>(movie.id);
    realm.write(() {
      realm.delete<Favourite>(value!);
    });
  }

  bool isFavourite(TMDBMovieDetail movie) {
    var value = realm.find<Favourite>(movie.id);
    return value != null;
  }

  List<Favourite> getFavourite() {
    final value = realm.all<Favourite>();
    return value.toList();
  }
}

@riverpod
FavouriteRepository favouriteRepository(FavouriteRepositoryRef ref) {
  return FavouriteRepository(realm: ref.watch(realmProvider));
}

@riverpod
class FavouriteController extends _$FavouriteController {
  @override
  bool build(TMDBMovieDetail movie) {
    final value = ref.watch(favouriteRepositoryProvider).isFavourite(movie);
    return value;
  }

  void addFavourite(TMDBMovieDetail movie) {
    ref.read(favouriteRepositoryProvider).addFavourite(movie);
    state = ref.watch(favouriteRepositoryProvider).isFavourite(movie);
    ref.invalidate(getFavouriteProvider);
  }

  void removeFavourite(TMDBMovieDetail movie) {
    ref.read(favouriteRepositoryProvider).removeFavourite(movie);
    state = ref.watch(favouriteRepositoryProvider).isFavourite(movie);
    ref.invalidate(getFavouriteProvider);
  }
}

@riverpod
List<Favourite> getFavourite(GetFavouriteRef ref) {
  return ref.watch(favouriteRepositoryProvider).getFavourite();
}
