import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/strings/failures.dart';

var getSnake = Get.snackbar('message', SERVER_FAILURE_MESSAGE, backgroundColor: Colors.redAccent);

Widget ActiveBarWidget() => Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              getSnake;
            },
            icon: Icon(Icons.mode_comment_outlined),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              getSnake;
            },
            icon: Icon(Icons.share_outlined),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              getSnake;
            },
            icon: Icon(Icons.add_a_photo),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              getSnake;
            },
            icon: Icon(Icons.file_upload_outlined),
          ),
        ],
      ),
    );
