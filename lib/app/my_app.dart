import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/tabs/presentation/pages/tabs_page.dart';
import 'package:whatsapp_clone/styles/dark_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const TabsPage(),
    );
  }
}
