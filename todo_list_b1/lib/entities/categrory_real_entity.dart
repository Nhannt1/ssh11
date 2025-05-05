import 'package:realm/realm.dart'; // import realm package

part 'categrory_real_entity.g.dart'; // declare a part file.

@RealmModel()
class $_CategroryRealEntity {
  @PrimaryKey()
  late ObjectId id;
  late String name;
  late int? iconCodePoint; // để lưu icon trong flutter
  late String? bachGroundColor; // color hex string
  late String? iconColorpHex;
}
