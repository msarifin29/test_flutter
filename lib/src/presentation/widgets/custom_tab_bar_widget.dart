import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class CustomTabBarWidget extends StatelessWidget {
  const CustomTabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(Sizes.s22),
      ),
      child: const TabBar(
        labelColor: Colors.pinkAccent,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        indicatorWeight: 3.0,
        indicatorColor: Colors.pinkAccent,
        indicatorPadding: EdgeInsets.only(
          left: Sizes.s26,
          right: Sizes.s26,
          bottom: Sizes.s10,
        ),
        tabs: [
          Tab(
            text: "Applied",
          ),
          Tab(
            text: "Offered",
          ),
          Tab(
            text: "Interviews",
          ),
        ],
      ),
    );
  }
}
