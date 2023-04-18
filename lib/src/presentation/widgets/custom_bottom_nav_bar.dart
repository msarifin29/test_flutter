// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:test_flutter/src/constants/asset_path.dart';
import 'package:test_flutter/src/presentation/pages/aplication_page.dart';
import 'package:test_flutter/src/presentation/pages/chat_page.dart';
import 'package:test_flutter/src/presentation/pages/search_page.dart';
import 'package:test_flutter/src/presentation/pages/vacancy_page.dart';

import '../../constants/sizes.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectIndex = 0;

  final List<Widget> _screen = [
    const VacancyPage(),
    const SearchPage(),
    const AplicationPage(),
    const ChatPage(),
    // const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [Expanded(child: _screen[_selectIndex])],
      ),
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Image(
              width: Sizes.s26,
              height: Sizes.s26,
              image: AssetImage(
                "${AssetPath.icons}/vacancy.png",
              ),
            ),
            icon: Image(
              width: Sizes.s26,
              height: Sizes.s26,
              image: AssetImage(
                "${AssetPath.icons}/vacancy.png",
              ),
            ),
            label: 'Vacancy',
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: Sizes.s26,
              height: Sizes.s26,
              image: AssetImage(
                "${AssetPath.icons}/search.png",
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: Sizes.s26,
              height: Sizes.s26,
              image: AssetImage(
                "${AssetPath.icons}/application.png",
              ),
            ),
            label: 'Applicants',
          ),
          BottomNavigationBarItem(
            icon: Image(
              width: Sizes.s26,
              height: Sizes.s26,
              image: AssetImage(
                "${AssetPath.icons}/chat.png",
              ),
            ),
            label: 'Chat',
          ),
          // const BottomNavigationBarItem(

          // icon: Icon(
          // color: Colors.cyan,
          // Icons.person_outline,
          // size: 26.0,
          // ),
          // label: 'Profile',
          // ),
        ],
      ),
    );
  }
}
