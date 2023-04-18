import 'package:flutter/material.dart';

import '../../constants/sizes.dart';
import '../widgets/applied_widget.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/custom_tab_bar_widget.dart';
import '../widgets/interviews_widget.dart';
import '../widgets/offred_widget.dart';

class AplicationPage extends StatelessWidget {
  const AplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(85.0),
            child: CustomAppBarWidget(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.s20),
            child: Column(
              children: const [
                CustomTabBarWidget(),
                Expanded(
                  child: TabBarView(
                    children: [
                      AppliedWidget(),
                      OfferedWidget(),
                      InterviewsWidget(),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
