import 'dart:math';

import 'package:drift/drift.dart';
import 'package:get/get.dart' as getx;
import '../db/database.dart';
import '../../utils/settings.dart';

class AuthController extends getx.GetxController {
  static AuthController get to => getx.Get.find();

  MelodyDB db = getx.Get.find();

  final settings = AppSettings();
  final userInitialized = getx.Rx<bool>(false);
  final currUser = getx.Rxn<User>();

  @override
  Future<void> onInit() async {
    await checkForUser();
    super.onInit();
  }

  Future checkForUser() async {
    final userCheck = await db.userDao.checkForUser();
    if (userCheck != null) {
      currUser.value = userCheck;
      userInitialized.value = true;
    }
  }

  // TODO: This should be changed to allow full user creation
  // for now we generate a temperary account for development
  Future createUser() async {
    String tempUser = getRandom(8);
    String tempPass = getRandom(10);
    var newUser = UsersCompanion(
        username: Value(tempUser),
        password: Value(tempPass),
        name: Value(tempUser),
        email: Value(tempUser + '@gmail.com'),
        dateCreated: Value(DateTime.now()),
        lastLogin: Value(DateTime.now()));

    currUser.value = await db.userDao.createUser(newUser);
    userInitialized.value = true;
  }

  String getRandom(int length) {
    const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random r = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
  }
}
