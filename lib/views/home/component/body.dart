import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/size_config.dart';

import 'home_header.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              HomeHeader(),
            ],
          ),
        ));
  }
}