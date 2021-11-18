import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/dkmads/date_selection.dart';
import 'package:smw_shop_backend/views/dkmads/home_header.dart';
import 'package:smw_shop_backend/views/dkmads/main_selection.dart';
import 'package:smw_shop_backend/views/dkmads/tab_bar_selection.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20),),
          HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(20),),
          DateSelection(),
          TabBarSelection(),
          MainSelection(),
        ],
      ),
    ));
  }
}