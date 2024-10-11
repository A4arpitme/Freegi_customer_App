import '../generated/assets.dart';

enum SideMenu {
  shop(Assets.imagesSideShop, 'Shop'),
  category(Assets.imagesSideCategory, 'Category'),
  addresses(Assets.imagesSideAddress, 'Addresses'),
  notification(Assets.imagesSideNotification, 'Notification'),
  payments(Assets.imagesSidePayments, 'Payments'),
  share(Assets.imagesSideShare, 'Share the app'),
  settings(Assets.imagesSideSetting, 'Settings'),
  termsPolicies(Assets.imagesSidePolicy, 'Terms & Policies'),
  helpSupport(Assets.imagesSideSupport, 'Help & Support'),
  logout(Assets.imagesLogout, 'Logout');

  final String imageName, itemName;

  const SideMenu(this.imageName, this.itemName);

  bool get isSvg => imageName.split(".").toList().last.contains("svg");

  bool get isLogout => this == logout;

  bool get isNotification => this == notification;
}

enum ContactUsTypes {
  customerService(
    typeName: 'Customer Service',
    typeSvgName: Assets.imagesContactCustomerService,
  ),
  contactShop(
    typeName: 'Contact Shop',
    typeSvgName: Assets.imagesContactCustomerService,
  ),
  whatsapp(
    typeName: 'WhatsApp',
    typeSvgName: Assets.imagesContactWhatsapp,
  ),
  website(
    typeName: 'Website',
    typeSvgName: Assets.imagesContactWebsite,
  ),
  facebook(
    typeName: 'Facebook',
    typeSvgName: Assets.imagesContactFacebook,
  ),
  instagram(
    typeName: 'Instagram',
    typeSvgName: Assets.imagesContactInsta,
  );

  final String typeName, typeSvgName;

  const ContactUsTypes({
    required this.typeName,
    required this.typeSvgName,
  });
}

enum TermsPoliciesTypes {
  aboutUs('About Us'),
  privacyPolicy('Privacy Policy'),
  refundPolicy('Refund Policy'),
  shippingPolicy('Shipping Policy'),
  termsConditions('Terms & Conditions');

  final String typeName;

  const TermsPoliciesTypes(this.typeName);
}

enum FilterType {
  ascending('Ascending'),
  descending('Descending'),
  popularity('Popularity'),
  priceLowHigh('Price: Low to High'),
  priceHighLow('Price: High to Low');

  final String typeName;

  const FilterType(this.typeName);
}

enum ProfileOptions {
  orderHistory("Order History", Assets.imagesOrderHistory),
  privacyPolicy("Privacy Policy", Assets.imagesPrivacyPolicy),
  termsCondition("Terms and Condition", Assets.imagesTermsCondition),
  logout("Logout", Assets.imagesLogout);

  final String optionName, imageName;

  const ProfileOptions(this.optionName, this.imageName);
}

enum AddressTypes {
  home('Home', Assets.imagesAddressHome),
  work('Work', Assets.imagesAddressWork),
  hotel('Hotel', Assets.imagesAddressHotel),
  other('Other', Assets.imagesAddressOther);

  final String typeName, svgName;

  const AddressTypes(this.typeName, this.svgName);
}
