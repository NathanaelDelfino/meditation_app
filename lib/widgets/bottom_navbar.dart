import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/main.dart';
import 'package:meditation_app/screens/details_screen.dart';

class BottomNavBar extends StatelessWidget {
  final String menu;

  const BottomNavBar({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            svgScr: 'assets/icons/calendar.svg',
            title: 'Hoje',
            isActive: menu == "h" ? true : false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            svgScr: 'assets/icons/gym.svg',
            title: 'Exercicios',
            isActive: menu == "e" ? true : false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsScreen();
                }),
              );
            },
          ),
          BottomNavItem(
            svgScr: 'assets/icons/Settings.svg',
            title: 'Config',
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final Function()? press;
  final String title;
  final bool isActive;
  final String svgScr;

  const BottomNavItem({
    Key? key,
    this.press,
    required this.title,
    this.isActive = false,
    required this.svgScr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: isActive ? kActiveIconColor : kTextColor,
              ),
            ),
            SvgPicture.asset(
              svgScr,
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ]),
    );
  }
}
