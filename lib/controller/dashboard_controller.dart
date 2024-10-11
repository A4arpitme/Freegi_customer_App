import 'package:flutter/material.dart';
import 'package:freegi_app/binding/chat_list_binding.dart';
import 'package:freegi_app/binding/home_binding.dart';
import 'package:freegi_app/binding/my_orders_binding.dart';
import 'package:freegi_app/routes/app_routes.dart';
import 'package:freegi_app/ui/chat/chat_list_screen.dart';
import 'package:freegi_app/ui/home/home_page.dart';
import 'package:freegi_app/ui/my_orders/my_orders_page.dart';
import 'package:freegi_app/ui/profile/profile_page.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  var currentIndex = 0.obs;

  final pages = <String>[
    AppRoutes.home,
    AppRoutes.myOrders,
    AppRoutes.chats,
    AppRoutes.editProfile,
  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == AppRoutes.home) {
      return GetPageRoute(
        settings: settings,
        page: () => const HomePage(),
        binding: HomeBinding(),
      );
    }

    if (settings.name == AppRoutes.myOrders) {
      return GetPageRoute(
        settings: settings,
        page: () => const MyOrdersPage(),
        binding: MyOrdersBinding(),
      );
    }

    if (settings.name == AppRoutes.chats) {
      return GetPageRoute(
        settings: settings,
        page: () => const ChatListScreen(),
        binding: ChatListBinding(),
      );
    }

    if (settings.name == AppRoutes.editProfile) {
      return GetPageRoute(
        settings: settings,
        page: () => const ProfilePage(),
        // binding: EditProfileBinding(),
      );
    }

    return null;
  }
}
