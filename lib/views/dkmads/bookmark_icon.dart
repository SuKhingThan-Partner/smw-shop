import 'package:flutter/material.dart';
import 'package:smw_shop_backend/helper/size_config.dart';

class BookMarks extends StatefulWidget{
  _BookMarks createState() => _BookMarks();
}
class _BookMarks extends State<BookMarks>{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(right: getProportionateScreenWidth(0)),
        child: IconButton(
          icon: Icon(Icons.star_border_outlined), onPressed: () {  },
        ));
  }
}