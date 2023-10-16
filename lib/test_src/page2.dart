import 'package:flutter/material.dart';
import 'package:flutter_posts_app/test_src/page1.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 2'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Get.off(Page1());
          }, child: Text('back') ),
        ),
      ),
    );
  }
}
