import 'package:flutter/material.dart';
import 'package:smw_shop_backend/helper/size_config.dart';

class Transaction extends StatefulWidget{
  _Transaction createState() => _Transaction();
}
class _Transaction extends State<Transaction>{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(right: getProportionateScreenWidth(0)),
        child: IconButton(
          icon: Icon(Icons.transform_outlined), onPressed: () {  },
        ));
  }
}