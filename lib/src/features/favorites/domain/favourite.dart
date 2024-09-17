import 'package:realm/realm.dart';
part 'favourite.realm.dart';

@RealmModel()
class _Favourite {
  @PrimaryKey()
  late int id;
  late String title;
  late String posterPath;
  late String releaseDate;
}
