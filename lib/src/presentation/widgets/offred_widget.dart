import 'package:flutter/material.dart';

import '../../constants/asset_path.dart';
import '../../constants/sizes.dart';

class OfferedWidget extends StatelessWidget {
  const OfferedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Opps, it looks so empty here..."),
        boxH30(),
        Image.asset("${AssetPath.images}/coming.jpg"),
      ],
    );
  }
}
