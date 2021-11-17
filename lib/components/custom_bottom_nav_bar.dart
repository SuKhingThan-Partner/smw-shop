import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smw_shop_backend/helper/enums.dart';
import 'package:smw_shop_backend/helper/style.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key, required this.selectedMenu})
      : super(key: key);

  final MenuState selectedMenu;
  void onTabTapped(int index){
    setState(){
     int _currentIndex=index;
    }
  }
  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black45,
      currentIndex: 3,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/ShopIcon.svg",
            color: MenuState.profile == selectedMenu
                ? kPrimaryColor
                : inActiveIconColor,
          ),
          title: new Text(
            "Home",
            //style: TextStyle(color: Colors.black45),
          ),
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              color: MenuState.favourite == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            title: new Text(
              "Favourite",
              //style: TextStyle(color: Colors.black45),
            )),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              color: MenuState.message == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            title: new Text(
              "Message",
              // style: TextStyle(color: Colors.black45),
            )),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            title: new Text("Profile"
                //style: TextStyle(color: Colors.black45),
                )),

      ],
      onTap: onTabTapped,
    );

  }
}
