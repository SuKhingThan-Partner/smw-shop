import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/home/component/popular_products.dart';

import 'categories.dart';
import 'discount_banner.dart';
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
              SizedBox(height: getProportionateScreenHeight(20),),
              DiscountBanner(),
              Categories(),
              SizedBox(height: getProportionateScreenWidth(30)),
              PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),

            ],
          ),
        ));
  }
}