import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/dkmads/search_field.dart';

class HomeHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
    child: Row(
        children: [
          SearchField(),
      ],
    ),
    );
  }
}