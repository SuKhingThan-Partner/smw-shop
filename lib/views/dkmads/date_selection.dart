import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/size_config.dart';
import 'package:smw_shop_backend/views/dkmads/bookmark_icon.dart';
import 'package:smw_shop_backend/views/dkmads/next_button.dart';
import 'package:smw_shop_backend/views/dkmads/previous_button.dart';
import 'package:smw_shop_backend/views/dkmads/search_field.dart';
import 'package:smw_shop_backend/views/dkmads/transaction.dart';

class DateSelection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PreviousButton(),
          Text('Nov 2021',),
          NextButton()
        ],

    );
  }
}