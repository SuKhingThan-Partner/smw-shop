import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smw_shop_backend/components/custom_bottom_nav_bar.dart';
import 'package:smw_shop_backend/helper/enums.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/home/component/body.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
