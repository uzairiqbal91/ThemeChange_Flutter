import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themechange_flutter/Constants/AppColors.dart';
import 'package:themechange_flutter/constants/Globals.dart';
import 'package:themechange_flutter/models/ThemeChange.dart';
import 'package:themechange_flutter/Constants/CustomTheme.dart' as theme;
import 'package:themechange_flutter/screens/HomeScreen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  static int selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Align(
      alignment: Alignment.center,
      child: Container(
        child: Text(
          "Profile",
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(Globals.MarginHorizontal),
        child: HomeScreen()),
    Align(
      alignment: Alignment.center,
      child: Container(
        child: Text(
          "Setting",
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme.CustomTheme.setTheme(
            Provider.of<ThemeChange>(context).isDark),
        home: Scaffold(
          body: SafeArea(
            child: Container(child: _widgetOptions.elementAt(selectedIndex)),
          ),
          bottomNavigationBar: FFNavigationBar(
            theme: FFNavigationBarTheme(
                itemWidth: 50,
                barBackgroundColor: Provider.of<ThemeChange>(context).isDark ?AppColors.Form_Dark_light : Colors.white,
                selectedItemBackgroundColor: AppColors.SECONDARY_COLORTWO,
                selectedItemIconColor: Colors.white,
                selectedItemLabelColor: Provider.of<ThemeChange>(context).isDark ?Colors.white : Colors.black,
                unselectedItemIconColor: Provider.of<ThemeChange>(context).isDark ? Colors.white : AppColors.UNSELECTED_ICON_COLOR),
            selectedIndex: selectedIndex,
            onSelectTab: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              FFNavigationBarItem(
                iconData: Icons.person,
                label: 'Profile',
              ),
              FFNavigationBarItem(
                iconData: Icons.home,
                label: 'Home',
              ),
              FFNavigationBarItem(
                iconData: Icons.settings,
                label: 'Settings',
              ),
            ],
          ),
        ));
  }
}
