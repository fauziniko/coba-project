import 'package:flutter/material.dart';
import 'package:fauzi_s_application/presentation/login_screen/login_screen.dart';
import 'package:fauzi_s_application/presentation/login_admin_container_screen/login_admin_container_screen.dart';
import 'package:fauzi_s_application/presentation/tambahkan_karyawan_screen/tambahkan_karyawan_screen.dart';
import 'package:fauzi_s_application/presentation/tampilkan_data_karyawan_screen/tampilkan_data_karyawan_screen.dart';
import 'package:fauzi_s_application/presentation/edit_karyawan_screen/edit_karyawan_screen.dart';
import 'package:fauzi_s_application/presentation/absensi_karyawan_screen/absensi_karyawan_screen.dart';
import 'package:fauzi_s_application/presentation/tambah_kehadiran_pageone_screen/tambah_kehadiran_pageone_screen.dart';
import 'package:fauzi_s_application/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String loginAdminPage = '/login_admin_page';

  static const String loginAdminContainerScreen =
      '/login_admin_container_screen';

  static const String tambahkanKaryawanScreen = '/tambahkan_karyawan_screen';

  static const String tampilkanDataKaryawanScreen =
      '/tampilkan_data_karyawan_screen';

  static const String editKaryawanScreen = '/edit_karyawan_screen';

  static const String absensiKaryawanScreen = '/absensi_karyawan_screen';

  static const String tambahKehadiranPageoneScreen =
      '/tambah_kehadiran_pageone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    loginAdminContainerScreen: (context) => LoginAdminContainerScreen(),
    tambahkanKaryawanScreen: (context) => TambahkanKaryawanScreen(),
    tampilkanDataKaryawanScreen: (context) => TampilkanDataKaryawanScreen(),
    editKaryawanScreen: (context) => EditKaryawanScreen(),
    absensiKaryawanScreen: (context) => AbsensiKaryawanScreen(),
    tambahKehadiranPageoneScreen: (context) => TambahKehadiranPageoneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
