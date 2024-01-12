import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:fauzi_s_application/widgets/custom_elevated_button.dart';
import 'package:fauzi_s_application/widgets/custom_icon_button.dart';
import 'package:fauzi_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TambahKehadiranPageoneScreen extends StatelessWidget {
  TambahKehadiranPageoneScreen({Key? key}) : super(key: key);

  TextEditingController enterEmployeeIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  _buildAppBar(context),
                  Container(
                      padding:
                          EdgeInsets.only(left: 31.h, top: 174.v, right: 31.h),
                      child: Column(children: [
                        Text("Tambahkan Kehadiran",
                            style: CustomTextStyles.titleMediumInterSemiBold),
                        SizedBox(height: 26.v),
                        _buildEnterEmployeeId(context),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
        height: 70.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomAppBar(),
          Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapBtnBack(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgBack3)))
        ]));
  }

  /// Section Widget
  Widget _buildEnterEmployeeId(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 24.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text("Masukan Id Karyawan",
                          style: CustomTextStyles.titleSmallRoboto))),
              SizedBox(height: 22.v),
              CustomTextFormField(
                  controller: enterEmployeeIdController,
                  hintText: "Enter Id Karyawan",
                  textInputAction: TextInputAction.done),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                  width: 184.h,
                  text: "Tambahkan Kehadiran",
                  buttonStyle: CustomButtonStyles.outlineErrorContainerTL8,
                  onPressed: () {
                    onTapTambahkanKehadiran(context);
                  }),
              SizedBox(height: 4.v)
            ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapBtnBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTambahkanKehadiran(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
