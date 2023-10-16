import 'package:flutter/material.dart';
import 'package:flutter_posts_app/core/colors/app_color.dart';
import 'package:get/get.dart';
import '../../controller/service.dart';

class CreatePostScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: bodyController,
              decoration: InputDecoration(labelText: 'Body'),
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () async {
                var title = titleController.text;
                var body = bodyController.text;
                var newPost = await ApiService().createPost(title, body, 1);

                if(newPost != null){
                  Get.snackbar('', 'body send successfully',backgroundColor: AppColors.mainColor);
                }else{
                Get.snackbar('', 'error',backgroundColor: AppColors.mainColor);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}