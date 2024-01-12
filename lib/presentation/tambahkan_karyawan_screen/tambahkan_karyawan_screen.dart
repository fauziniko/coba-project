import '../tambahkan_karyawan_screen/widgets/eighteen_item_widget.dart';
import '../tambahkan_karyawan_screen/widgets/thirteen_item_widget.dart';
import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/presentation/login_admin_page/login_admin_page.dart';
import 'package:fauzi_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:fauzi_s_application/widgets/custom_bottom_bar.dart';
import 'package:fauzi_s_application/widgets/custom_elevated_button.dart';
import 'package:fauzi_s_application/widgets/custom_icon_button.dart';
import 'package:fauzi_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TambahkanKaryawanScreen extends StatelessWidget {
  TambahkanKaryawanScreen({Key? key}) : super(key: key);

  TextEditingController inputEmployeeNameController = TextEditingController();

  TextEditingController inputTotalWorkingHoursController =
      TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  _buildFiftyNine(context),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 32.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Tambahkan Karyawan Baru",
                                style:
                                    CustomTextStyles.titleMediumInterSemiBold),
                            SizedBox(height: 21.v),
                            Container(
                                margin: EdgeInsets.only(left: 1.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 29.h, vertical: 24.v),
                                decoration: AppDecoration.outlineErrorContainer1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text(
                                                  "Masukan Nama Karyawan",
                                                  style: CustomTextStyles
                                                      .titleSmallRoboto))),
                                      SizedBox(height: 4.v),
                                      CustomTextFormField(
                                          controller:
                                              inputEmployeeNameController,
                                          hintText: "Masukan Nama Karyawan"),
                                      SizedBox(height: 14.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("Total Jam kerja",
                                                  style: CustomTextStyles
                                                      .titleSmallRoboto))),
                                      SizedBox(height: 4.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 5.h),
                                          child: CustomTextFormField(
                                              controller:
                                                  inputTotalWorkingHoursController,
                                              hintText:
                                                  "Masukan Total Jam Kerja",
                                              textInputAction:
                                                  TextInputAction.done)),
                                      SizedBox(height: 12.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("Jenis Kelamin",
                                                  style: CustomTextStyles
                                                      .titleSmall_1))),
                                      SizedBox(height: 9.v),
                                      _buildEighteen(context),
                                      SizedBox(height: 10.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("Jabatan",
                                                  style: CustomTextStyles
                                                      .titleSmall_1))),
                                      SizedBox(height: 9.v),
                                      _buildThirteen(context),
                                      SizedBox(height: 43.v),
                                      CustomElevatedButton(
                                          width: 184.h,
                                          text: "Tambahkan Data",
                                          buttonStyle: CustomButtonStyles
                                              .outlineErrorContainerTL8,
                                          onPressed: () {
                                            onTapTambahkanData(context);
                                          }),
                                      SizedBox(height: 6.v)
                                    ])),
                            SizedBox(height: 5.v)
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return SizedBox(
        height: 70.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomAppBar(),
          Padding(
              padding: EdgeInsets.only(left: 31.h),
              child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapBtnBack(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgBack)))
        ]));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Wrap(
        runSpacing: 15.v,
        spacing: 15.h,
        children: List<Widget>.generate(2, (index) => EighteenItemWidget()));
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Wrap(
        runSpacing: 12.v,
        spacing: 12.h,
        children: List<Widget>.generate(3, (index) => ThirteenItemWidget()));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeprimary:
        return AppRoutes.loginAdminPage;
      case BottomBarEnum.Mdireportboxoutline:
        return "/";
      case BottomBarEnum.Login:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.loginAdminPage:
        return LoginAdminPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the loginAdminContainerScreen when the action is triggered.
  onTapBtnBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginAdminContainerScreen);
  }

  /// Navigates to the loginAdminContainerScreen when the action is triggered.
  onTapTambahkanData(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginAdminContainerScreen);
  }
}
