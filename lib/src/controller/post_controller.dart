import 'package:flutter_posts_app/src/controller/service.dart';
import 'package:get/get.dart';
import '../model/post_model.dart';

class PostController extends GetxController {
  var posts = <Post>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    isLoading(true);
    try {
      var postList = await ApiService.getPosts();
      if (postList != null) {
        posts.assignAll(postList);
      }
    } finally {
      isLoading(false);
    }
  }
}