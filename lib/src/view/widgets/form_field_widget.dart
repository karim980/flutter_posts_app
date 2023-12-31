import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormFieldWidget extends StatelessWidget {
  String name;
  String lable;
  bool boolval;
  IconData ?suffixIcon;
  IconData prefixIcon;
  TextEditingController? controller;

  FormFieldWidget({
    super.key,
    required this.name,
    required this.lable,
    required this.boolval,
    this.suffixIcon,
    required this.prefixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      controller: controller ,
      decoration: InputDecoration(
        labelText: lable,
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
      ),
      obscureText: boolval,
    );
  }
}
