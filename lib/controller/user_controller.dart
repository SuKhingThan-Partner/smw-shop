import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:smw_shop_backend/helper/_utils.dart';
import 'package:smw_shop_backend/views/home/home_screen.dart';

import '../smw_api.dart';

enum Status { Uninitialized, Authenticated, UnAuthenticated }

class UserController extends GetxController {
  var isLoading = true.obs;
  Status _status = Status.Uninitialized;
  static var client = http.Client();


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
  void selectUserNamePassword(String name,String password)async{
    var _isInternet=await isInternet();
    debugPrint("IsInternetConnection: $_isInternet");
    var response=await client.get(Uri.parse(selectUserNamePasswordApi+name+"&password="+password));
    if(response.statusCode==200){
      onBackData();
    }


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
