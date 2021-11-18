import 'package:flutter/material.dart';
import 'package:smw_shop_backend/helper/size_config.dart';

class NextButton extends StatefulWidget{
  _NextButton createState() => _NextButton();
}
class _NextButton extends State<NextButton>{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(right: getProportionateScreenWidth(1)),
        child: IconButton(
          icon: Icon(Icons.arrow_forward_ios_outlined,size: 18,), onPressed: () {  },
        ));
  }
}