import 'package:flutter/material.dart';
import 'package:introproject/reusable_elements/customTextField.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  CustomTextField EmailField = CustomTextField(
    IconPath: 'assets/icons/Email.svg',
    HintTextParameter: 'Insert Email...',
    isPassword: false,
  );
  CustomTextField PasswordField = CustomTextField(
    IconPath: 'assets/icons/Password.svg',
    HintTextParameter: 'Insert Password...',
    isPassword: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 211, 207),
      body: Column(children: [
        _titlePage(),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _inputTitle('Email:'),
              EmailField,
              _inputTitle('Password:'),
              PasswordField
            ],
          ),
        )
      ]),
    );
  }

  Padding _titlePage() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 100, 20, 70),
      child: Text(
        'SignIn',
        style: TextStyle(
            fontSize: 40,
            color: const Color.fromARGB(255, 34, 34, 34),
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Padding _inputTitle(String inputTitle) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
      child: Text(
        inputTitle,
        style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 50, 50, 51),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
