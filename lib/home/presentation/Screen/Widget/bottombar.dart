import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_ui/page1/presentation/Screen/page.dart';

class bottombar extends StatelessWidget {
  const bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
  rippleColor: Colors.grey.shade700, // tab button ripple color when pressed
  hoverColor:  Colors.grey.shade700,// tab button hover color
  haptic: true, // haptic feedback
  tabBorderRadius: 15, 
  tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
  tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
  tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
  curve: Curves.easeOutExpo, // tab animation curves
  duration:const Duration(milliseconds: 900), // tab animation duration
  gap: 8, // the tab button gap between icon and text 
  color: Colors.grey[800], // unselected icon color
  activeColor: Colors.purple, // selected icon and text color
  iconSize: 24, // tab button icon size
  tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
  padding:const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
  tabs: [
    GButton(
      onPressed: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return const page();
        }));
      },
      icon: Icons.home,
      text: 'Home',
    ),
 const   GButton(
      icon: Icons.apple,
      text: 'Likes',
    ),
  const  GButton(
      icon: Icons.search,
      text: 'Search',
    ),
  const  GButton(
      icon: Icons.person,
      text: 'Profile',
    )
  ]
);
  }
}
