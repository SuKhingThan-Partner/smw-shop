import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smw_shop_backend/helper/enums.dart';
import 'package:smw_shop_backend/helper/style.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({Key? key, required this.selectedMenu})
      : super(key: key);
  final MenuState selectedMenu;

  _CustomBottomNavBar createState() => _CustomBottomNavBar(selectedMenu:selectedMenu);
}
class _CustomBottomNavBar extends State<CustomBottomNavBar>{
  _CustomBottomNavBar({required this.selectedMenu});
  final MenuState selectedMenu;
   late int _selectedIndex=0;

   void onTabTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black45,
      currentIndex: _selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/ShopIcon.svg",
            color: MenuState.calendar == selectedMenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
          title: new Text(
            "12/9",
            //style: TextStyle(color: Colors.black45),
          ),
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              color: MenuState.status == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            title: new Text(
              "Status",
              //style: TextStyle(color: Colors.black45),
            )),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              color: MenuState.accounts == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            title: new Text(
              "Accounts",
              // style: TextStyle(color: Colors.black45),
            )),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: MenuState.settings == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            title: new Text("Settings"
                //style: TextStyle(color: Colors.black45),
                )),

      ],
      onTap: onTabTapped,
    );

  }
}
