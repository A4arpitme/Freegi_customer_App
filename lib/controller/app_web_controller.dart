import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebController extends GetxController {
  RxBool isLoading = true.obs;

  late WebViewController webController;

  @override
  void onInit() {
    webController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            isLoading(false);
          },
        ),
      );
    super.onInit();
  }

  setUrl(String url) {
    webController.loadRequest(
      Uri.parse(url),
    );
  }

  void onPageFinished() {
    isLoading(false);
  }
}
