import '../absensi_karyawan_screen/widgets/absensikaryawan_item_widget.dart';
import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/presentation/login_admin_page/login_admin_page.dart';
import 'package:fauzi_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:fauzi_s_application/widgets/custom_bottom_bar.dart';
import 'package:fauzi_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AbsensiKaryawanScreen extends StatelessWidget {
  AbsensiKaryawanScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  _buildAppBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 28.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 26.v),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("Daftar Kehadiran",
                                    style: CustomTextStyles
                                        .titleMediumInterSemiBold)),
                            SizedBox(height: 18.v),
                            _buildAbsensiKaryawan(context)
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
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
                  child: CustomImageView(imagePath: ImageConstant.imgBack2)))
        ]));
  }

  /// Section Widget
  Widget _buildAbsensiKaryawan(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 18.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return AbsensikaryawanItemWidget();
            }));
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
}
