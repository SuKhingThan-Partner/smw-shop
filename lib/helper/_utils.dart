import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'style.dart';
import 'package:connectivity/connectivity.dart';


String _connectionStatus = 'Unknown';
final Connectivity _connectivity = Connectivity();
TextStyle largeText = GoogleFonts.ptSans(
  fontSize: 22,
  fontWeight: FontWeight.normal,
  color: blue,
);

TextStyle mediumText = GoogleFonts.ptSans(
  fontSize: 18,
  color: lightBlue,
);

Future<bool> isInternet() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else {
    // Neither mobile data or WIFI detected, not internet connection found.
    return false;
  }
}