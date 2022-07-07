import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:therapy/generated/l10n.dart';
import 'package:therapy/model/entities/index.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppService extends GetxService {
  // Theme
  final Rx<UserEntity?> user = null.obs;

  Future<AppService> init() async {
    return this;
  }
}
