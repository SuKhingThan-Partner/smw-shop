import 'package:flutter/cupertino.dart';
import 'package:smw_shop_backend/helper/style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: white,
        child: SpinKitFadingCircle(
          color: black,
          size: 30,
        )
    );
  }
}