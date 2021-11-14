
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smw_shop_backend/components/_input_fields.dart';
import 'package:smw_shop_backend/controller/user_controller.dart';
import 'package:smw_shop_backend/helper/_utils.dart';
import 'package:smw_shop_backend/helper/style.dart';
import 'package:smw_shop_backend/views/home/home_screen.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<LoginPage>{
  final UserController _userController=Get.put(UserController());

  @override
  void initState(){
    _userController.onInit();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20,150,20,150),
            child: Card(
                elevation: 14,
                shadowColor: Colors.black,
                child: Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Welcome', style: largeText),
                          Text('Sign in to your Account', style: mediumText),
                          SizedBox(
                            height: kSpace,
                          ),
                          Container(
                              width: deviceWidth * .8,
                              child: CustomInputField(
                                  Icon(Icons.person, size: 30, color: Colors.blue),
                                  'User')),
                          SizedBox(
                            height: kSpace,
                          ),
                          Container(
                              width: deviceWidth * .8,
                              child: CustomInputField(
                                  Icon(Icons.visibility_off_outlined,
                                      size: 30, color: Colors.blue),
                                  'Password')),
                          SizedBox(
                            height: kSpace,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: (deviceWidth * .3),
                                child: TextButton(
                                    child: Text("sign in".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    style: ButtonStyle(
                                        padding: MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(18.0),
                                                side: BorderSide(color: Colors.white)))),
                                    onPressed: () =>  Get.off(() => HomeScreen())
                                ),
                              ),
                              SizedBox(
                                width: kSpace,
                              ),
                              Container(
                                width: (deviceWidth * .3),
                                child: TextButton(
                                    child: Text("sign up".toUpperCase(),
                                        style: TextStyle(fontSize: 14)),
                                    style: ButtonStyle(
                                        padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(18.0),
                                                side: BorderSide(
                                                    color: Colors.lightBlue)))),
                                    onPressed: () {
                                      Get.off(() => HomeScreen());
                                    }),
                              ),
                            ],
                          ),
                          RaisedButton(
                              child:SvgPicture.asset('assets/icons/facebook.svg'),
                              onPressed: () {
                                _userController.initiateFacebookLogin();
                              }
                          ),
                        ],
                      ),
                    )
                )
            ),
          )
        ],
      )
    );
  }
}