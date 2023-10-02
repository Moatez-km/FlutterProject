import 'package:flutter/material.dart';

//button submited
Widget defaultButton(
        {width = double.infinity,
        background = Colors.blue,
        double height = 50.0,
        bool isUpperCase = true,
        double radius = 0.0,
        required VoidCallback onPressed,
        required String text}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
//form validator
Widget defaultFromField({
  required TextEditingController controller,
  required TextInputType type,
  required FormFieldValidator<String> validate,
  required String label,
  required IconData prefix,
  bool isPassword = false,
  IconData? suffix,
}) =>
    TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(prefix),
          suffixIcon: suffix != null ? Icon(suffix) : null,
          border: const OutlineInputBorder(),
        ),
        validator: validate);
/*Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                
 TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password must not be empty';
                      }
                      return null;
                    },
                  ),               
                
                */