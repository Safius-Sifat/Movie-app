import 'package:realm/realm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdb_movie_app_riverpod/src/features/favorites/domain/favourite.dart';
part 'realm_provider.g.dart';

@riverpod
Realm realm(RealmRef ref) {
  // Create a Configuration object
  var config = Configuration.local([Favourite.schema]);

// Opean a Realm
  var realm = Realm(config);
  return realm;
}
