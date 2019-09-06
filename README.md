# dpad_tv_webview

WebView which can be navigated by DPAD only. Useful for Android TV

This is still work in progress.


## Usage
To use this plugin, add `dpad_tv_webview` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

### Example

``` dart
import 'package:dpad_tv_webview/dpad_tv_webview.dart';
import 'package:flutter/material.dart';

void main() => runApp(DpadTvWebView());

class DpadTvWebView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DpadTvWebView();
  }
}

class _DpadTvWebView extends State<DpadTvWebView> {
  final String _title = 'dpad_tv_webview example for Android TV';

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    WebViewForTV webViewForTV = WebViewForTV(
      initialUrl: "https://www.google.com",
    );

    DefaultTextStyle menu = DefaultTextStyle(
      style: textTheme.headline,
      child: webViewForTV,
    );

    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: menu,
      ),
    );
  }
}


```
