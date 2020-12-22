import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

import '../ui/components/components.dart';
import 'factories/factories.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    

    return GetMaterialApp(
      title: 'Mari',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      initialRoute: '/chat',
      getPages: [
        GetPage(name: '/', page: makeMariHomePage),
        GetPage(name: '/chat', page: makeMariChatPage)
      ],
    );
  }
}