import '../edit_karyawan_screen/widgets/four_item_widget.dart';
import '../edit_karyawan_screen/widgets/seven_item_widget.dart';
import 'package:fauzi_s_application/core/app_export.dart';
import 'package:fauzi_s_application/presentation/login_admin_page/login_admin_page.dart';
import 'package:fauzi_s_application/widgets/app_bar/custom_app_bar.dart';
import 'package:fauzi_s_application/widgets/custom_bottom_bar.dart';
import 'package:fauzi_s_application/widgets/custom_elevated_button.dart';
import 'package:fauzi_s_application/widgets/custom_icon_button.dart';
import 'package:fauzi_s_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditKaryawanScreen extends StatelessWidget {
  EditKaryawanScreen({Key? key}) : super(key: key);

  TextEditingController editEmployeeNameController = TextEditingController();

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
                  _buildAppBar(context),
                  Container(
                      padding:
                          EdgeInsets.only(left: 31.h, top: 89.v, right: 31.h),
                      child: Column(children: [
                        Text("Edit Data Karyawan",
                            style: CustomTextStyles.titleSmall15),
                        SizedBox(height: 12.v),
                        _buildEditEmployeeName(context),
                        SizedBox(height: 5.v)
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
                  child: CustomImageView(imagePath: ImageConstant.imgBack1)))
        ]));
  }

  /// Section Widget
  Widget _buildEditEmployeeName(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 46.v),
        decoration: AppDecoration.outlineErrorContainer3
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Nama Karyawan", style: theme.textTheme.titleMedium)),
          SizedBox(height: 10.v),
          CustomTextFormField(
              controller: editEmployeeNameController,
              hintText: "Edit Nama Karyawan",
              textInputAction: TextInputAction.done),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Jenis Kelamin", style: theme.textTheme.titleMedium)),
          SizedBox(height: 10.v),
          Wrap(
              runSpacing: 14.v,
              spacing: 14.h,
              children: List<Widget>.generate(2, (index) => SevenItemWidget())),
          SizedBox(height: 10.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Text("Jabatan", style: theme.textTheme.titleMedium)),
          SizedBox(height: 11.v),
          Wrap(
              runSpacing: 12.v,
              spacing: 12.h,
              children: List<Widget>.generate(3, (index) => FourItemWidget())),
          SizedBox(height: 19.v),
          CustomElevatedButton(
              text: "Edit Data Karyawan",
              margin: EdgeInsets.symmetric(horizontal: 37.h),
              onPressed: () {
                onTapEditDataKaryawan(context);
              }),
          SizedBox(height: 12.v)
        ]));
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
  onTapEditDataKaryawan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginAdminContainerScreen);
  }
}
