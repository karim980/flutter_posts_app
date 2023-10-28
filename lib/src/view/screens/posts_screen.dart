import 'package:flutter/material.dart';
import 'package:flutter_posts_app/core/colors/app_color.dart';
import 'package:flutter_posts_app/src/view/screens/add_post_screen.dart';
import 'package:flutter_posts_app/src/view/screens/details_screen.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../core/strings/failures.dart';
import '../../controller/post_controller.dart';
import '../widgets/active_bar_widget.dart';

class PostsScreen extends StatelessWidget {

 var img='https://cdn-icons-png.flaticon.com/512/5024/5024509.png';
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
        }

        else {
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: Get.find<PostController>().posts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: InkWell(
                  onTap: () {
                    Get.to(()=>DetailsScreen(id: getPost[index].id, title: getPost[index].title, body: getPost[index].body, img: img,));
                  },
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: AppColors.elmColor,
                              radius: 35,
                              child: Image.network(
                                  fit: BoxFit.cover, img)),
                          SizedBox(width: 10,),

                          Text('User ${getPost[index].id}'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(getPost[index].title,style: Theme.of(context).textTheme.headline2,overflow: TextOverflow.clip, maxLines: 1),
                      ),
                      Text(getPost[index].body,maxLines: 3,overflow: TextOverflow.ellipsis),
                      ActiveBarWidget()

                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              height: 2,
              color: Colors.blueGrey,
            ),
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CreatePostScreen());
        },
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
