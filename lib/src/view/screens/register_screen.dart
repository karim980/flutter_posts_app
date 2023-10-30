import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../widgets/form_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
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
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'First Name',
                      lable: 'First Name',
                      boolval: false,
                      prefixIcon: Icons.person),
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'Last Name',
                      lable: 'Last Name',
                      boolval: false,
                      prefixIcon: Icons.person),
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'Email',
                      lable: 'Email',
                      boolval: false,
                      prefixIcon: Icons.email),
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'Phone Number',
                      lable: 'Phone Number',
                      boolval: false,
                      prefixIcon: Icons.phone),
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'Password',
                      lable: 'Password',
                      boolval: true,
                      suffixIcon: CupertinoIcons.eye,
                      prefixIcon: Icons.password),
                  SizedBox(height: 20),
                  FormFieldWidget(
                      name: 'Password',
                      lable: 'Confirm Password',
                      boolval: true,
                      suffixIcon: CupertinoIcons.eye,
                      prefixIcon: Icons.password),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Text('Register'),
                    onPressed: () {
                      if (_formKey.currentState!.saveAndValidate()) {
                        Get.back();
                      }
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
