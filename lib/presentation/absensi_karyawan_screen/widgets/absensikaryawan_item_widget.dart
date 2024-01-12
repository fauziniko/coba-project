import 'package:fauzi_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AbsensikaryawanItemWidget extends StatelessWidget {
  const AbsensikaryawanItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 284.h,
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "Fauzi Niko Allianzah",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 17.v),
          Container(
            width: 284.h,
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.outlineErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              " 01. 20-12-2023 9:10:48  ",
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}
