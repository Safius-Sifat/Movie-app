// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favouriteRepositoryHash() =>
    r'707e66f5d979df9a980c6e39c3d4bbd3a31d31c3';

/// See also [favouriteRepository].
@ProviderFor(favouriteRepository)
final favouriteRepositoryProvider =
    AutoDisposeProvider<FavouriteRepository>.internal(
  favouriteRepository,
  name: r'favouriteRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$favouriteRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FavouriteRepositoryRef = AutoDisposeProviderRef<FavouriteRepository>;
String _$getFavouriteHash() => r'35586e7a97f30a840d1a29e21a121a1d3f518fa6';

/// See also [getFavourite].
@ProviderFor(getFavourite)
final getFavouriteProvider = AutoDisposeProvider<List<Favourite>>.internal(
  getFavourite,
  name: r'getFavouriteProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getFavouriteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetFavouriteRef = AutoDisposeProviderRef<List<Favourite>>;
String _$favouriteControllerHash() =>
    r'8f1fb7d9e2099ce6bee9b20411773a504f7cf566';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$FavouriteController
    extends BuildlessAutoDisposeNotifier<bool> {
  late final TMDBMovieDetail movie;

  bool build(
    TMDBMovieDetail movie,
  );
}

/// See also [FavouriteController].
@ProviderFor(FavouriteController)
const favouriteControllerProvider = FavouriteControllerFamily();

/// See also [FavouriteController].
class FavouriteControllerFamily extends Family<bool> {
  /// See also [FavouriteController].
  const FavouriteControllerFamily();

  /// See also [FavouriteController].
  FavouriteControllerProvider call(
    TMDBMovieDetail movie,
  ) {
    return FavouriteControllerProvider(
      movie,
    );
  }

  @override
  FavouriteControllerProvider getProviderOverride(
    covariant FavouriteControllerProvider provider,
  ) {
    return call(
      provider.movie,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'favouriteControllerProvider';
}

/// See also [FavouriteController].
class FavouriteControllerProvider
    extends AutoDisposeNotifierProviderImpl<FavouriteController, bool> {
  /// See also [FavouriteController].
  FavouriteControllerProvider(
    TMDBMovieDetail movie,
  ) : this._internal(
          () => FavouriteController()..movie = movie,
          from: favouriteControllerProvider,
          name: r'favouriteControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favouriteControllerHash,
          dependencies: FavouriteControllerFamily._dependencies,
          allTransitiveDependencies:
              FavouriteControllerFamily._allTransitiveDependencies,
          movie: movie,
        );

  FavouriteControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movie,
  }) : super.internal();

  final TMDBMovieDetail movie;

  @override
  bool runNotifierBuild(
    covariant FavouriteController notifier,
  ) {
    return notifier.build(
      movie,
    );
  }

  @override
  Override overrideWith(FavouriteController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FavouriteControllerProvider._internal(
        () => create()..movie = movie,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movie: movie,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<FavouriteController, bool>
      createElement() {
    return _FavouriteControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FavouriteControllerProvider && other.movie == movie;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movie.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FavouriteControllerRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `movie` of this provider.
  TMDBMovieDetail get movie;
}

class _FavouriteControllerProviderElement
    extends AutoDisposeNotifierProviderElement<FavouriteController, bool>
    with FavouriteControllerRef {
  _FavouriteControllerProviderElement(super.provider);

  @override
  TMDBMovieDetail get movie => (origin as FavouriteControllerProvider).movie;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
