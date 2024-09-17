import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb_movie_app_riverpod/src/features/favorites/data/favourite_repository.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/domain/tmdb_movie.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/presentation/movies/movie_list_tile.dart';
import 'package:tmdb_movie_app_riverpod/src/routing/app_router.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(getFavouriteProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Favourites')),
      body: RefreshIndicator(
        onRefresh: () async {
          // dispose all the pages previously fetched. Next read will refresh them
          ref.invalidate(getFavouriteProvider);
          // keep showing the progress indicator until the first page is fetched
        },
        child: favourites.isEmpty
            ? const Center(child: Text('No favourites yet'))
            : ListView.builder(
                // use a different key for each query, ensuring the scroll
                // position is reset when the query and results change
                // key: ValueKey(query),
                // * pass the itemCount explicitly to prevent unnecessary renders
                // * during overscroll
                itemCount: favourites.length,
                itemBuilder: (context, index) {
                  // use the fact that this is an infinite list to fetch a new page
                  // as soon as the index exceeds the page size
                  // Note that ref.watch is called for up to pageSize items
                  // with the same page and query arguments (but this is ok since data is cached)

                  return MovieListTile(
                    movie: TMDBMovie(
                        id: favourites[index].id,
                        title: favourites[index].title,
                        posterPath: favourites[index].posterPath,
                        releaseDate: favourites[index].releaseDate),
                    debugIndex: index + 1,
                    onPressed: () => context.goNamed(
                      AppRoute.movie.name,
                      pathParameters: {'id': favourites[index].id.toString()},
                    ),
                  );
                },
              ),
      ),
    );
  }
}
