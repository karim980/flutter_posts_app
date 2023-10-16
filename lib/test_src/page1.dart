import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  var data =Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data[0]),
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
