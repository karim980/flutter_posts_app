import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page 3'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text('back') ),
        ),
      ),
    );
  }
}
