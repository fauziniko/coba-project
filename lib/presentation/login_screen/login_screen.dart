import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/widgets/custom_elevated_button.dart';
import 'package:fauzi_s_application/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 111.v),
                child: Column(children: [
                  _buildMobileLoginCristina(context),
                  SizedBox(height: 10.v),
                  Text("Please login",
                      style: CustomTextStyles.titleLargePrimaryContainer),
                  SizedBox(height: 29.v),
                  _buildKaryawanAdmin(context),
                  SizedBox(height: 17.v),
                  CustomElevatedButton(
                      text: "Karyawan",
                      margin: EdgeInsets.only(left: 28.h, right: 29.h),
                      onPressed: () {
                        onTapKaryawan(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildMobileLoginCristina(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 334.v,
            width: 346.h,
            child: Stack(alignment: Alignment.centerRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMobileLoginCristina,
                  height: 300.adaptSize,
                  width: 300.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 5.v)),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 137.h, right: 91.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("LOGIN", style: theme.textTheme.headlineSmall),
                        SizedBox(height: 279.v),
                        Text("WELCOME", style: CustomTextStyles.titleLarge_1)
                      ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgHome,
                  height: 100.v,
                  width: 72.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 88.v))
            ])));
  }

  /// Section Widget
  Widget _buildKaryawanAdmin(BuildContext context) {
    return SizedBox(
        height: 42.v,
        width: 336.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 61.h, bottom: 2.v),
                  child: Text("Karyawan",
                      style: CustomTextStyles.bodyMediumInterPrimary))),
          CustomOutlinedButton(
              width: 336.h,
              text: "Admin",
              onPressed: () {
                onTapAdmin(context);
              },
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the loginAdminContainerScreen when the action is triggered.
  onTapAdmin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginAdminContainerScreen);
  }

  /// Navigates to the tambahKehadiranPageoneScreen when the action is triggered.
  onTapKaryawan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tambahKehadiranPageoneScreen);
  }
}
