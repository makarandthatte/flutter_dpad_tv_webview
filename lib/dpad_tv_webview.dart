library dpad_tv_webview;

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewForTV extends StatelessWidget {
  final String initialUrl;

  const WebViewForTV({Key key, this.initialUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      onWebViewCreated: _handleWebViewWidget,
      initialUrl: initialUrl,
      javascriptMode: JavascriptMode.unrestricted,
      onPageFinished: _handlePageFinished,
    );
  }

  void _handleWebViewWidget(WebViewController controller) {}

  void _handlePageFinished(String url) {}
}
