<div align="center">
<img src="movida.png" alt="Movies app preview" width=25% height=25%>
  <h1 align="center">Movida</h1>
  <p align="center">A flutter movie app</p>
</div>


This is an improved version of [Andrea Bizottos](https://github.com/bizz84/tmdb_movie_app_riverpod) app based on the latest Riverpod 2.0 APIs. I added favourites and details screen functionality to the app

## Preview
<div align="center">
<img src="movida.gif" alt="Movies app preview" width=200 >
</div>

## Motivation

I built this app to showcase my expertise in Riverpod and GoRouter.


## Current Features

- Infinite scrolling with pagination
- Pull to refresh
- Search functionality
- Loading UI with the [Shimmer](https://pub.dev/packages/shimmer) package
- Stateful nested routing with [`StatefulShellRoute`](https://pub.dev/documentation/go_router/latest/go_router/StatefulShellRoute-class.html)
- Favourites using the [Realm](https://pub.dev/packages/realm) package.
- Movie Detail screen

Here's a detailed tutorial explaining how the pagination and search UI works:

- [Flutter Pagination with Riverpod: The Ultimate Guide](https://codewithandrea.com/articles/flutter-riverpod-pagination/)

## Packages in use

- [flutter_riverpod](https://pub.dev/packages/riverpod) and [riverpod_generator](https://pub.dev/packages/riverpod_generator) for data caching (and much more!)
- [freezed](https://pub.dev/packages/freezed) for JSON serialization
- [dio](https://pub.dev/packages/dio) for networking
- [go_router](https://pub.dev/packages/go_router) for navigation
- [shimmer](https://pub.dev/packages/shimmer) for the loading UI
- [envied](https://pub.dev/packages/envied) for handling API keys
- [cached_network_image](https://pub.dev/packages/cached_network_image) for caching images
- [Realm](https://pub.dev/packages/realm) for local database

## App Architecture & Folder structure

The project follows my Riverpod app architecture with a feature-first project structure.

More details here:

- [Flutter App Architecture with Riverpod: An Introduction](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)
- [Flutter Project Structure: Feature-first or Layer-first?](https://codewithandrea.com/articles/flutter-project-structure/)

It also uses the new [Riverpod Generator](https://pub.dev/packages/riverpod_generator) package, which I have covered here:

- [How to Auto-Generate your Providers with Flutter Riverpod Generator](https://codewithandrea.com/articles/flutter-riverpod-generator/)



## [LICENSE: MIT](LICENSE.md)
