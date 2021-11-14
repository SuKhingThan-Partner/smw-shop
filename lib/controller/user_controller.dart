import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:smw_shop_backend/views/home/home_screen.dart';

enum Status { Uninitialized, Authenticated, UnAuthenticated }

class UserController extends GetxController {
  var isLoading = true.obs;
  Status _status = Status.Uninitialized;

  Status get status => _status;
  var isLoggedIn = false.obs;

  Map _userObj = {};

  @override
  void onInit() {
    super.onInit();
  }

  Future<bool> onBackData() async {
    Get.off(() => HomeScreen());
    return true;
  }

  void initiateFacebookLogin() async {
    FacebookAuth.instance.login(permissions: ["email"]).then((value) {
      FacebookAuth.instance.getUserData().then((userData) {
        isLoggedIn.value = true;
        _userObj = userData;
        String email = _userObj["email"];
        _status=Status.Authenticated;
        debugPrint("EmailResponse: $email");
        if (email.isNotEmpty) {
          onBackData();
        }
        update();
      });
    });
  }
}
