import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smw_shop_backend/helper/size_config.dart';

class SearchField extends StatefulWidget{
  _SearchField createState() => _SearchField();
}
class _SearchField extends State<SearchField>{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
    child: IconButton(
      icon: Icon(Icons.search), onPressed: () {  },
    ));
  }
}