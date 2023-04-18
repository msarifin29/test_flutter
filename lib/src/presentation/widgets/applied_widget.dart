// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import 'package:test_flutter/src/domain/job_model.dart';

import '../../constants/sizes.dart';
import 'job_desk_widget.dart';

class AppliedWidget extends StatelessWidget {
  const AppliedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString("assets/data_dummy.json"),
        builder: (context, snapshot) {
          final result = parseDataFromJsonString(snapshot.data);

          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: result.length,
              itemBuilder: (context, i) {
                final index = result[i];
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(Sizes.s12)),
                  margin: const EdgeInsets.only(top: Sizes.s12),
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.s12,
                    vertical: Sizes.s18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Sizes.s50,
                        height: Sizes.s50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s50 / 2),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          image: DecorationImage(
                            image: AssetImage(index.logo),
                          ),
                        ),
                      ),
                      JobDeskWidget(
                        jobModel: index,
                      ),
                      const Text(
                        "Detail",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
  }
}
