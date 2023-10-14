import 'package:flutter/material.dart';
import 'package:introproject/reusable_elements/customTextField.dart';
import 'package:introproject/reusable_elements/cutomButton.dart';

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

  CustomButton LogIn = CustomButton(
      width: 100,
      height: 30,
      text: "Login",
      logo: "",
      textColor: const Color.fromARGB(255, 209, 211, 207),
      textFontSize: 16,
      color: const Color.fromARGB(255, 34, 34, 34),
      bIsSimple: true,
      borderColor: Color.fromARGB(0, 209, 211, 207),
      borderWidth: 0);

  CustomButton loginWithGoogle = CustomButton(
      width: 500,
      height: 40,
      logo: "assets/icons/Google.svg",
      textColor: Color.fromARGB(255, 146, 74, 74),
      textFontSize: 20,
      text: "Continue with Google",
      color: Color.fromARGB(255, 209, 211, 207),
      bIsSimple: false,
      borderColor: Color.fromARGB(255, 146, 74, 74),
      borderWidth: 1);

  CustomButton loginWithfacebook = CustomButton(
      width: 500,
      height: 40,
      logo: 'assets/icons/Google.svg',
      textColor: Color.fromARGB(255, 74, 87, 146),
      textFontSize: 20,
      text: "Continue with Facebook",
      color: Color.fromARGB(255, 209, 211, 207),
      bIsSimple: false,
      borderColor: Color.fromARGB(255, 74, 87, 146),
      borderWidth: 1);

  @override
  Widget build(BuildContext context) {
    print(loginWithGoogle.logo);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 211, 207),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/LandingPageBackground.jpg"),
                fit: BoxFit.cover,
                opacity: 0.1)),
        child: Column(
            children: [_titlePage(), _SignInForm(), _otherLoginPlatforms()]),
      ),
    );
  }

//this is the method for adding the Complex buttons to a column
  Container _otherLoginPlatforms() {
    return Container(
      margin: EdgeInsets.fromLTRB(45, 20, 45, 0),
      child: Column(
        children: [
          loginWithGoogle,
          SizedBox.fromSize(size: const Size(10, 10)),
          loginWithfacebook,
          SizedBox.fromSize(size: const Size(10, 15)),
          Divider(
            color: Color.fromARGB(255, 48, 48, 48),
            thickness: 0.5,
            indent: 55,
            endIndent: 55,
          ),
        ],
      ),
    );
  }

  Container _SignInForm() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _inputTitle('Email:'),
          EmailField,
          _inputTitle('Password:'),
          PasswordField,
          _login_pwdReset(),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Divider(
              color: Color.fromARGB(255, 48, 48, 48),
              thickness: 0.5,
              indent: 100,
              endIndent: 100,
            ),
          )
        ],
      ),
    );
  }

  Row _login_pwdReset() {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
          child: Text(
            "Forgot Password",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: LogIn)
      ],
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
