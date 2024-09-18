import 'package:cuidapet_mobile/app/core/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CuidapetTextformField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final String label;
  final bool obscureText;
  final ValueNotifier<bool> obscureTextVN;

  CuidapetTextformField({
    super.key,
    required this.label,
    this.obscureText = false, 
    this.controller, 
    this.validator,
  }) : obscureTextVN = ValueNotifier<bool>(obscureText);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,

      builder: (_, obscureTextVNValue, child) => TextFormField(
        controller: controller,
        validator: validator,
        obscureText: obscureTextVNValue,
        decoration: InputDecoration(
          labelText: label,
          
          labelStyle: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
      
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
      
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey)
          ),
      
          suffixIcon: obscureText
              ? IconButton(
                  onPressed: () {
                    obscureTextVN.value = !obscureTextVNValue;
                  },
                  icon: Icon(
                    obscureTextVNValue ? Icons.lock : Icons.lock_open,
                    color: context.primaryColor,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
