import 'package:flutter/material.dart';
import 'package:flutter_posts_app/core/colors/app_color.dart';
import 'package:flutter_posts_app/test_src/page1.dart';
import 'package:flutter_posts_app/test_src/page2.dart';
import 'package:flutter_posts_app/test_src/page3.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Page1(), arguments: ['name']);
                  },
                  child: Text('go to page 1')),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Page2());
                  },
                  child: Text('go to page 2')),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(Page3());
                  },
                  child: Text('go to page 3')),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar('title', 'message message message',
                        backgroundColor: AppColors.backColor,
                        snackPosition: SnackPosition.BOTTOM,
                        snackStyle: SnackStyle.FLOATING,
                    );
                  },
                  child: Text('snack bar')),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        confirm: OutlinedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('back')),
                        content: Text('how are you'),
                        cancel: OutlinedButton(
                            onPressed: () {}, child: Text('lk')));
                  },
                  child: Text('dilog')),
            ),
          ],
        ),
      ),
    );
  }
}
