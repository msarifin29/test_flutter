import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/sizes.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
      ),
      toolbarHeight: 95.0,
      title: const Text(
        "Applicants",
        style: TextStyle(
          fontSize: Sizes.s30,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
    );
  }
}
