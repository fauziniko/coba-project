import '../tampilkan_data_karyawan_screen/widgets/employeeprofile_item_widget.dart';
import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/presentation/login_admin_page/login_admin_page.dart';
import 'package:fauzi_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:fauzi_s_application/widgets/custom_bottom_bar.dart';
import 'package:fauzi_s_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TampilkanDataKaryawanScreen extends StatelessWidget {
  TampilkanDataKaryawanScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  _buildAppBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 31.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.v),
                            Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: Text("Daftar karyawan Hotel",
                                    style: CustomTextStyles
                                        .titleMediumInterSemiBold)),
                            SizedBox(height: 8.v),
                            _buildEmployeeProfile(context)
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
                  child:
                      CustomImageView(imagePath: ImageConstant.imgBack50x50)))
        ]));
  }

  /// Section Widget
  Widget _buildEmployeeProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 19.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return EmployeeprofileItemWidget();
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
