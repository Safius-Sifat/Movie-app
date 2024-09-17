import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:read_more_text/read_more_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tmdb_movie_app_riverpod/src/features/favorites/data/favourite_repository.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/data/movies_repository.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/domain/tmdb_movie.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/domain/tmdb_poster.dart';
import 'package:tmdb_movie_app_riverpod/src/features/movies/presentation/movies/movie_detail_shimmer.dart';

class MovieDetailsScreen extends ConsumerWidget {
  const MovieDetailsScreen({super.key, required this.movieId});
  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieAsync = ref.watch(movieProvider(movieId: movieId));
    return movieAsync.when(
      error: (e, st) => Scaffold(
        appBar: AppBar(),
        body: Center(child: Text(e.toString())),
      ),
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const MovieDetailShimmer(),
      ),
      data: (movie) => Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: TMDBPoster.imageUrl(
                        movie.posterPath!, PosterSize.original),
                    imageBuilder: (context, imageProvider) => Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.6,
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Theme.of(context).scaffoldBackgroundColor,
                            Colors.transparent,
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    placeholder: (_, __) => Shimmer.fromColors(
                      baseColor: Colors.black26,
                      highlightColor: Colors.black12,
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.black,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Theme.of(context).scaffoldBackgroundColor,
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    // height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    movie.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          // color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    softWrap: true,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    '${movie.releaseDate!.split('-').first}, ${movie.runtime} min',
                                    maxLines: 2,
                                    softWrap: true,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.white38),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  movie.rating!.toStringAsFixed(2),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: Colors.white38),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 40,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              decoration: BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  movie.genres[index].name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: Colors.white30),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 8),
                          itemCount: movie.genres.length),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ReadMoreText(movie.overview,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white70),
                        numLines: 3,
                        readMoreText: 'read more',
                        readLessText: 'less'),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white, size: 30),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.favorite_border,
                        color: Colors.white, size: 30),
                    isSelected: ref.watch(favouriteControllerProvider(movie)),
                    selectedIcon: const Icon(Icons.favorite_rounded,
                        color: Colors.white, size: 30),
                    onPressed: () {
                      if (ref.watch(favouriteControllerProvider(movie))) {
                        ref
                            .read(favouriteControllerProvider(movie).notifier)
                            .removeFavourite(movie);
                      } else {
                        ref
                            .read(favouriteControllerProvider(movie).notifier)
                            .addFavourite(movie);
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
