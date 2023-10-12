import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  String IconPath;
  String HintTextParameter;
  bool isPassword;

  CustomTextField(
      {required this.IconPath,
      required this.HintTextParameter,
      required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: _textField(isPassword),
    );
  }

  Container _textField(bool isPassword) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextField(
          obscureText: isPassword,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            hintText: HintTextParameter,
            hintStyle: const TextStyle(
                color: Color.fromARGB(139, 255, 255, 255),
                fontSize: 16,
                fontFamily: 'Montserrat'),
            labelStyle: const TextStyle(color: Colors.white),
            filled: true,
            fillColor: const Color.fromRGBO(116, 116, 118, 100),
            contentPadding: const EdgeInsets.all(10),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: SvgPicture.asset(
                IconPath,
                color: Colors.white,
                height: 15,
                width: 15,
              ),
            ),
          )),
    );
  }
}
