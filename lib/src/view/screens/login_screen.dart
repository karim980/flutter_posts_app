import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_posts_app/src/view/screens/posts_screen.dart';
import 'package:flutter_posts_app/src/view/screens/register_screen.dart';
import 'package:flutter_posts_app/src/view/widgets/form_field_widget.dart';
import 'package:get/get.dart';

import '../../controller/post_controller.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FormBuilder(
              key: _formKey,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  FormFieldWidget(
                      name: 'Email',
                      lable: 'Email',
                      boolval: false,
                      prefixIcon: Icons.email),
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'Password',
                      lable: 'Password',
                      boolval: false,
                      suffixIcon: CupertinoIcons.eye,
                      prefixIcon: Icons.password),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Login'),
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        Get.to(PostsScreen());
                        Get.lazyPut(()=>PostController());
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    child: Text('Register'),
                    onPressed: () {
                      Get.to(RegisterScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
