import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/home/home_screen.dart';
import 'package:smw_shop_backend/views/launch/launch.dart';
import 'package:smw_shop_backend/views/login/login_screen.dart';

import 'controller/user_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenController(),
    );
  }
}
class ScreenController extends StatelessWidget{
  @override
   Widget build(BuildContext context){
    final UserController userController= Get.put(UserController());
    switch (userController.status){
      case Status.Uninitialized:
        return SplashScreen();
      case Status.Authenticated:
        return HomeScreen();
      default: return LoginPage();
    }
    // return Scaffold(
    //   body: DefaultTabController(
    //         length: 3,
    //         child: Column(
    //           children: <Widget>[
    //             SizedBox(height: 50,),
    //             Container(
    //               constraints: BoxConstraints.expand(height: 50),
    //               child: TabBar(tabs: [
    //                 Tab(
    //
    //                     child: Text("16/7",style: TextStyle(color: Colors.blue),),
    //
    //                 ),
    //                 Tab(
    //                     child: Text("16/7",style: TextStyle(color: Colors.blue),),),
    //                     Tab(
    //                       child: Text("16/7",style: TextStyle(color: Colors.blue),),
    //                     ),
    //               ]),
    //             ),
    //             Expanded(
    //               child: Container(
    //                 child: TabBarView(children: [
    //                   Container(
    //                     child: Text("Home Body"),
    //                   ),
    //                   Container(
    //                     child: Text("Articles Body"),
    //                   ),
    //                   Container(
    //                     child: Text("User Body"),
    //                   ),
    //                 ]),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    // );
  }
}

