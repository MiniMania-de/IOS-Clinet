import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimania Launcher',
      theme: ThemeData.dark(),
      home: StartMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minimania Launcher')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WebViewScreen()),
            );
          },
          child: Text('Start'),
        ),
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minimania')),
      body: WebView(
        initialUrl: 'https://minimania.de.cool',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
