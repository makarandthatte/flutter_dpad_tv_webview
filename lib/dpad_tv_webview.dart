library dpad_tv_webview;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewForTV extends StatefulWidget {
  final String initialUrl;

  const WebViewForTV({Key key, this.initialUrl}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WebViewForTV();
  }
}

class _WebViewForTV extends State<WebViewForTV> {
//  WebViewController _controller;
  WebView _webView;
  Set<Factory<OneSequenceGestureRecognizer>> _gestureRecognizers;
  String _userAgent;

  @override
  void initState() {
    super.initState();

    _webView = WebView(
      onWebViewCreated: _handleWebViewWidget,
      initialUrl: widget.initialUrl,
      javascriptMode: JavascriptMode.unrestricted,
//      navigationDelegate: _navigationDelegate,
      gestureRecognizers: _gestureRecognizers,
      onPageFinished: _handlePageFinished,
      userAgent: _userAgent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _webView;
  }

  void _handleWebViewWidget(WebViewController controller) {
//    _controller = controller;
  }

  void _handlePageFinished(String url) {}

//  NavigationDecision _navigationDelegate(NavigationRequest navigation) {}
}
