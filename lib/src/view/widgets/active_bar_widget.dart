import 'package:flutter/material.dart';

class ActiveBarWidget extends StatelessWidget {
   ActiveBarWidget({super.key});
  IconData iconData=Icons.heart_broken_outlined;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(padding: EdgeInsets.symmetric(horizontal:70,vertical: 20),
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.mode_comment_outlined),),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.share_outlined),),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(iconData),),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.file_upload_outlined),),
          ],
        ),
      ),
    );
  }
}
