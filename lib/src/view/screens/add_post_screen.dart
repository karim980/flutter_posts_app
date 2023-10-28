import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/service.dart';
import 'package:flutter_posts_app/core/util/snackbar_message.dart';
import 'package:flutter_posts_app/core/strings/messages.dart';
import 'package:flutter_posts_app/core/strings/failures.dart';

import '../widgets/text_form_field_widget.dart';

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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormFieldWidget(
                controller: titleController,
                name: 'Title',
                multiLines: false,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormFieldWidget(
                multiLines: true,
                controller: bodyController,
                name: 'Body',
              ),
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () async {
                var title = titleController.text;
                var body = bodyController.text;
                var newPost = await ApiService().createPost(title, body, 1);

                if (newPost != null) {
                  SnackBarMessage().showSuccessSnackBar(
                      message: ADD_SUCCESS_MESSAGE, context: context);
                  Get.back();
                } else {
                  SnackBarMessage().showErrorSnackBar(
                      message: SERVER_FAILURE_MESSAGE, context: context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
