import 'package:flutter/material.dart';
import 'package:smw_shop_backend/helper/size_config.dart';

class PreviousButton extends StatefulWidget{
  _PreviousButton createState() => _PreviousButton();
}
class _PreviousButton extends State<PreviousButton>{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(right: getProportionateScreenWidth(1)),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,size: 18,), onPressed: () {  },
        ));
  }
}