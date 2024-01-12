import 'package:fauzi_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EmployeeprofileItemWidget extends StatelessWidget {
  const EmployeeprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineErrorContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Nama              : Fauzi Niko Allianzah",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Id                    : 01",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Jabatan          : Tetap",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Jenis kelamin : Perempuan",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Jam Kerja       : 40 Jam",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "Hari Kerja       : 3 Hari",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Total Gaji        : Rp. 12.000.000",
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 4.h),
                  decoration: AppDecoration.outlineErrorContainer2.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClipboardFail,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 3.v,
                          ),
                          child: Text(
                            "Hapus Karyawan",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 4.h),
                  decoration: AppDecoration.outlineErrorContainer2,
                  child: Container(
                    width: 150.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          height: 18.adaptSize,
                          width: 18.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            right: 3.h,
                          ),
                          child: Text(
                            "Edit Karyawan",
                            style: CustomTextStyles.labelMediumPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
