import 'package:flutter/material.dart';
import 'package:flutter_posts_app/core/app_theme.dart';
import 'package:flutter_posts_app/src/controller/post_controller.dart';
import 'package:flutter_posts_app/src/view/screens/login_screen.dart';
import 'package:flutter_posts_app/src/view/screens/posts_screen.dart';
import 'package:flutter_posts_app/src/view/screens/add_post_screen.dart';
import 'package:flutter_posts_app/src/view/screens/register_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/posts', page: () => PostsScreen()),
        GetPage(name: '/details', page: () => CreatePostScreen()),
      ],
    );
  }
}