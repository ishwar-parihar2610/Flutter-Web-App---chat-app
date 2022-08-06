import 'package:hive/hive.dart';

part 'hive_adapter.g.dart';
@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  String? email;

  @HiveField(1)
  String? name;

  @HiveField(2)
  String? profileImage;

  @HiveField(3)
  String? mobileNumber;

  UserModel(
      {required this.name,
      required this.email,
      required this.mobileNumber,
      required this.profileImage});
}
