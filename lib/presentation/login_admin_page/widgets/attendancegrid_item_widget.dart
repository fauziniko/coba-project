import 'package:fauzi_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AttendancegridItemWidget extends StatelessWidget {
  const AttendancegridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Total Kehadiran",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 13.v),
          Text(
            "30",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }
}
