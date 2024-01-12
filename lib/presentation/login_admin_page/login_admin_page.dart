import '../login_admin_page/widgets/attendancegrid_item_widget.dart';
import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginAdminPage extends StatelessWidget {
  const LoginAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("Analisis Kehadiran",
                              style:
                                  CustomTextStyles.titleMediumInterSemiBold)),
                      SizedBox(height: 19.v),
                      _buildAttendanceGrid(context),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Manajemen Karyawan Hotel",
                              style:
                                  CustomTextStyles.titleMediumInterSemiBold)),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: _buildAddEmployeeStack(context,
                              tambahkanKaryawan: "Tambahkan Karyawan",
                              drawerAddImage: ImageConstant.imgPaperAdd,
                              tampilkanDataKaryawan: "Tambahkan Karyawan",
                              onTapTwo: () {
                            onTapPaperAdd(context);
                          })),
                      SizedBox(height: 21.v),
                      _buildAddEmployeeStack(context,
                          tambahkanKaryawan: "Tambahkan Karyawan",
                          drawerAddImage: ImageConstant.imgDrawerAdd,
                          tampilkanDataKaryawan: "Tampilkan Data Karyawan",
                          onTapAddEmployeeStack: () {
                        onTapAddEmployeeStack(context);
                      }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar();
  }

  /// Section Widget
  Widget _buildAttendanceGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 12.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 101.v,
                crossAxisCount: 2,
                mainAxisSpacing: 40.h,
                crossAxisSpacing: 40.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return AttendancegridItemWidget();
            }));
  }

  /// Common widget
  Widget _buildAddEmployeeStack(
    BuildContext context, {
    required String tambahkanKaryawan,
    required String drawerAddImage,
    required String tampilkanDataKaryawan,
    Function? onTapAddEmployeeStack,
    Function? onTapTwo,
  }) {
    return GestureDetector(
        onTap: () {
          onTapAddEmployeeStack!.call();
        },
        child: SizedBox(
            height: 57.v,
            width: 328.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 27.h),
                      child: Text(tambahkanKaryawan,
                          style: CustomTextStyles.titleLargeMedium.copyWith(
                              color: theme.colorScheme.errorContainer
                                  .withOpacity(1))))),
              GestureDetector(
                  onTap: () {
                    onTapTwo!.call();
                  },
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 2.v),
                          decoration: AppDecoration.outlineErrorContainer1
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            Container(
                                height: 55.adaptSize,
                                width: 55.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                decoration: AppDecoration.outlineErrorContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10),
                                child: CustomImageView(
                                    imagePath: drawerAddImage,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    alignment: Alignment.topLeft)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 23.h, top: 15.v, bottom: 19.v),
                                child: Text(tampilkanDataKaryawan,
                                    style: CustomTextStyles.titleMediumInter
                                        .copyWith(
                                            color: theme
                                                .colorScheme.errorContainer
                                                .withOpacity(1)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgMoreThan,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                margin: EdgeInsets.only(top: 7.v, bottom: 8.v))
                          ]))))
            ])));
  }

  /// Navigates to the tambahkanKaryawanScreen when the action is triggered.
  onTapPaperAdd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tambahkanKaryawanScreen);
  }

  /// Navigates to the tampilkanDataKaryawanScreen when the action is triggered.
  onTapAddEmployeeStack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tampilkanDataKaryawanScreen);
  }
}
