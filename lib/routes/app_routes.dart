import 'package:freegi_app/binding/address_detail_binding.dart';
import 'package:freegi_app/binding/addresses_binding.dart';
import 'package:freegi_app/binding/all_categories_binding.dart';
import 'package:freegi_app/binding/cart_binding.dart';
import 'package:freegi_app/binding/chat_binding.dart';
import 'package:freegi_app/binding/chat_list_binding.dart';
import 'package:freegi_app/binding/contact_shop_binding.dart';
import 'package:freegi_app/binding/coupons_binding.dart';
import 'package:freegi_app/binding/customer_service_binding.dart';
import 'package:freegi_app/binding/dashboard_binding.dart';
import 'package:freegi_app/binding/edit_profile_binding.dart';
import 'package:freegi_app/binding/help_center_binding.dart';
import 'package:freegi_app/binding/home_binding.dart';
import 'package:freegi_app/binding/login_binding.dart';
import 'package:freegi_app/binding/my_orders_binding.dart';
import 'package:freegi_app/binding/notification_binding.dart';
import 'package:freegi_app/binding/order_details_binding.dart';
import 'package:freegi_app/binding/otp_binding.dart';
import 'package:freegi_app/binding/overview_binding.dart';
import 'package:freegi_app/binding/payment_binding.dart';
import 'package:freegi_app/binding/personal_details_binding.dart';
import 'package:freegi_app/binding/product_details_binding.dart';
import 'package:freegi_app/binding/profile_binding.dart';
import 'package:freegi_app/binding/return_exchange_binding.dart';
import 'package:freegi_app/binding/search_binding.dart';
import 'package:freegi_app/binding/set_language_binding.dart';
import 'package:freegi_app/binding/shop_binding.dart';
import 'package:freegi_app/binding/signup_binding.dart';
import 'package:freegi_app/binding/terms_policy_binding.dart';
import 'package:freegi_app/binding/top_up_binding.dart';
import 'package:freegi_app/binding/wallet_binding.dart';
import 'package:freegi_app/ui/addresses/address_detail_page.dart';
import 'package:freegi_app/ui/addresses/addresses_page.dart';
import 'package:freegi_app/ui/all_categories/all_categories_page.dart';
import 'package:freegi_app/ui/cart/cart_screen.dart';
import 'package:freegi_app/ui/chat/chat_list_screen.dart';
import 'package:freegi_app/ui/chat/chat_page.dart';
import 'package:freegi_app/ui/coupons/coupons_page.dart';
import 'package:freegi_app/ui/dashboard/dashboard_page.dart';
import 'package:freegi_app/ui/edit_profile/edit_profile_page.dart';
import 'package:freegi_app/ui/help_center/contact_shop_page.dart';
import 'package:freegi_app/ui/help_center/customer_service_page.dart';
import 'package:freegi_app/ui/help_center/help_center_page.dart';
import 'package:freegi_app/ui/home/home_page.dart';
import 'package:freegi_app/ui/location/location_permissions.dart';
import 'package:freegi_app/ui/login/login_page.dart';
import 'package:freegi_app/ui/my_orders/my_orders_page.dart';
import 'package:freegi_app/ui/notification/notification_page.dart';
import 'package:freegi_app/ui/order_accepted_screen.dart';
import 'package:freegi_app/ui/order_details/order_details_page.dart';
import 'package:freegi_app/ui/otp/otp_screen.dart';
import 'package:freegi_app/ui/overview/overview_page.dart';
import 'package:freegi_app/ui/payment/payment_page.dart';
import 'package:freegi_app/ui/personal_details/personal_details_page.dart';
import 'package:freegi_app/ui/product_details/product_details_page.dart';
import 'package:freegi_app/ui/profile/profile_page.dart';
import 'package:freegi_app/ui/return_exchange/return_exchange_page.dart';
import 'package:freegi_app/ui/search/search_page.dart';
import 'package:freegi_app/ui/set_language/set_language_page.dart';
import 'package:freegi_app/ui/shop/shop_page.dart';
import 'package:freegi_app/ui/signup/signup_page.dart';
import 'package:freegi_app/ui/splash_page.dart';
import 'package:freegi_app/ui/terms_policies/terms_policies_page.dart';
import 'package:freegi_app/ui/wallet/wallet_page.dart';
import 'package:freegi_app/ui/wallet/wallet_top_up_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initial = '/';
  static const String overview = '/overview';
  static const String signUp = '/sign-up';
  static const String otp = '/otp';
  static const String personalDetails = '/personal-details';
  static const String login = '/login';
  static const String location = '/location';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String search = '/search';
  static const String allCategories = '/all-categories';

  static const String cart = '/cart';
  static const String payment = '/payment';
  static const String orderDetails = '/order-details';
  static const String returnExchangeOrder = '/return-exchange-order';
  static const String productDetails = '/product-details';
  static const String orderAccepted = '/order-accepted';
  static const String coupons = '/coupons';
  static const String myOrders = '/my-orders';
  static const String shop = '/shop';

  static const String editProfile = '/edit-profile';
  static const String profile = '/profile';
  static const String wallet = '/wallet';
  static const String topUpWallet = '/top-up-wallet';
  static const String chats = '/chats';
  static const String chat = '/chat';
  static const String addresses = '/addresses';
  static const String addressDetail = '/address-detail';
  static const String notifications = '/notifications';
  static const String setLanguage = '/set-language';

  static const String helpCenter = '/help-center';
  static const String customerService = '/customer-service';
  static const String contactShop = '/contact-shop';

  static const String termsPolicies = '/terms-policies';

  // static const String appWeb = '/app-web';

  // static const String locationPermissionPage = '/location-permission';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashPage()),
    GetPage(
      name: overview,
      page: () => const OverviewPage(),
      binding: OverviewBinding(),
    ),
    GetPage(
      name: signUp,
      page: () => const SignupPage(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: "$otp/:phone",
      page: () => const OtpScreen(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: personalDetails,
      page: () => const PersonalDetailsPage(),
      binding: PersonalDetailsBinding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: location,
      page: () => const LocationPermissionsPage(),
      // binding: LoginBinding(),
    ),
    GetPage(
      name: dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: allCategories,
      page: () => const AllCategoriesPage(),
      binding: AllCategoriesBinding(),
    ),
    GetPage(
      name: shop,
      page: () => const ShopPage(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: cart,
      page: () => const CartScreen(),
      binding: CartBinding(),
    ),
    GetPage(
      name: payment,
      page: () => const PaymentPage(),
      binding: PaymentBinding(),
    ),
    GetPage(
      name: coupons,
      page: () => const CouponsPage(),
      binding: CouponsBinding(),
    ),
    GetPage(
      name: "$orderDetails/:orderId",
      page: () => const OrderDetailsPage(),
      binding: OrderDetailsBinding(),
    ),
    GetPage(
      name: "$returnExchangeOrder/:title",
      page: () => const ReturnExchangePage(),
      binding: ReturnExchangeBinding(),
    ),
    GetPage(
      name: "$productDetails/:productId",
      page: () => const ProductDetailsPage(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: orderAccepted,
      page: () => const OrderAcceptedScreen(),
      // binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: myOrders,
      page: () => const MyOrdersPage(),
      binding: MyOrdersBinding(),
    ),
    GetPage(
      name: helpCenter,
      page: () => const HelpCenterPage(),
      binding: HelpCenterBinding(),
    ),
    GetPage(
      name: customerService,
      page: () => const CustomerServicePage(),
      binding: CustomerServiceBinding(),
    ),
    GetPage(
      name: contactShop,
      page: () => const ContactShopPage(),
      binding: ContactShopBinding(),
    ),
    GetPage(
      name: termsPolicies,
      page: () => const TermsPoliciesPage(),
      binding: TermsPolicyBinding(),
    ),
    GetPage(
      name: editProfile,
      page: () => const EditProfilePage(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: wallet,
      page: () => const WalletPage(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: topUpWallet,
      page: () => const WalletTopUpPage(),
      binding: TopUpBinding(),
    ),
    GetPage(
      name: chats,
      page: () => const ChatListScreen(),
      binding: ChatListBinding(),
    ),
    GetPage(
      name: chat,
      page: () => const ChatPage(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: addresses,
      page: () => const AddressesPage(),
      binding: AddressesBinding(),
    ),
    GetPage(
      name: addressDetail,
      page: () => const AddressDetailPage(),
      binding: AddressDetailBinding(),
    ),
    GetPage(
      name: notifications,
      page: () => const NotificationPage(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: setLanguage,
      page: () => const SetLanguagePage(),
      binding: SetLanguageBinding(),
    ),
  ];
}
