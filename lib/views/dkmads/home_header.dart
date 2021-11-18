import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/dkmads/bookmark_icon.dart';
import 'package:smw_shop_backend/views/dkmads/search_field.dart';
import 'package:smw_shop_backend/views/dkmads/transaction.dart';

class HomeHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          Text('Transaction'),
          Row(
              children: [
                BookMarks(),
                Transaction(),
              ],
            ),
        ],
    ),
    );
  }
}