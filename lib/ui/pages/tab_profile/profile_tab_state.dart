import 'package:therapy/model/entities/index.dart';
import 'package:therapy/model/enums/load_status.dart';
import 'package:get/get.dart';

class ProfileTabState {
  Rxn<UserEntity> user = Rxn<UserEntity>();

  final signOutStatus = LoadStatus.initial.obs;

  ProfileTabState() {}
}
