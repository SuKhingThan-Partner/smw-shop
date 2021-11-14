import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smw_shop_backend/helper/enums.dart';
import 'package:smw_shop_backend/helper/style.dart';
import 'package:smw_shop_backend/views/login/login_screen.dart';

class CustomBottomNavBar extends StatelessWidget{
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu
}): super(key:key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context){
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // )
      ),
      child: SafeArea(
        top:false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {
              Get.off(() => LoginPage());

            }, icon: SvgPicture.asset("assets/icons/ShopIcon.svg",
            color: MenuState.home == selectedMenu?
              kPrimaryColor: inActiveIconColor,)),
            IconButton(onPressed: () {
              Get.off(() => LoginPage());

            }, icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
              color: MenuState.favourite == selectedMenu?
              kPrimaryColor: inActiveIconColor,)),
            IconButton(onPressed: () {
              Get.off(() => LoginPage());

            }, icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
              color: MenuState.message == selectedMenu?
              kPrimaryColor: inActiveIconColor,)),
            IconButton(onPressed: () {
              Get.off(() => LoginPage());

            }, icon: SvgPicture.asset("assets/icons/User Icon.svg",
              color: MenuState.profile == selectedMenu?
              kPrimaryColor: inActiveIconColor,))


          ],
        ),

      ),
    );
  }
}