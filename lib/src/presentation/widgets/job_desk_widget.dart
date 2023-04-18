import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/sizes.dart';
import '../../domain/job_model.dart';

class JobDeskWidget extends StatelessWidget {
  const JobDeskWidget({
    Key? key,
    required this.jobModel,
  }) : super(key: key);

  final JobModel jobModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          jobModel.jobName,
          style: const TextStyle(
            fontSize: Sizes.s20,
            fontWeight: FontWeight.w500,
          ),
        ),
        boxH4(),
        Text(
          jobModel.company,
          style: const TextStyle(
            fontSize: Sizes.s16,
            fontWeight: FontWeight.w400,
          ),
        ),
        boxH4(),
        Row(
          children: [
            Text(
              "Rp ${NumberFormat.currency(locale: 'ID', symbol: "", decimalDigits: 0).format(jobModel.minSalary)}",
              style: const TextStyle(
                fontSize: Sizes.s16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "- ${NumberFormat.currency(locale: 'ID', symbol: "", decimalDigits: 0).format(jobModel.maxSalary)}",
              style: const TextStyle(
                fontSize: Sizes.s16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        boxH4(),
        Text(
          "${jobModel.city} - ${jobModel.status}",
          style: const TextStyle(
            fontSize: Sizes.s16,
            fontWeight: FontWeight.w400,
          ),
        ),
        boxH4(),
        Row(
          children: const [
            CircleAvatar(
              radius: Sizes.s8,
              backgroundColor: Colors.green,
            ),
            Text(
              " [Status Name]",
              style: TextStyle(
                fontSize: Sizes.s12,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}
