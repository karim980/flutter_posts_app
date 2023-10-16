import 'package:flutter/material.dart';
import 'package:flutter_posts_app/core/colors/app_color.dart';
import 'package:flutter_posts_app/src/view/screens/add_post_screen.dart';
import 'package:get/get.dart';
import '../../controller/post_controller.dart';


class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Obx(() {
        var getPost = Get.find<PostController>().posts;
        if (Get.find<PostController>().isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: Get.find<PostController>().posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                titleAlignment: ListTileTitleAlignment.center,
                contentPadding: EdgeInsets.only(bottom: 20,right: 10,top: 10),
                leading: CircleAvatar(
                    radius: 50,
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://cdn-icons-png.flaticon.com/512/5024/5024509.png')),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text('${getPost[index].id} ${getPost[index].title}'),
                ),
                subtitle: Text(getPost[index].body,
                    overflow: TextOverflow.ellipsis, maxLines: 4),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              height: 2,
              color: Colors.black,
            ),
          );
        }
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(CreatePostScreen());
      },child: Icon(Icons.add,color: AppColors.whiteColor,),),
    );
  }
}
