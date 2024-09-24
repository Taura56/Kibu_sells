import 'package:flutter/material.dart';

//Widgets
import '../reusable_widgets/inputs.dart';
import '../reusable_widgets/button.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  late double _deviceHeight;
  late double _deviceWidth;

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  Widget _buildUI() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.03, vertical: _deviceHeight * 0.02),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _pageTital(),
            SizedBox(
              height: _deviceHeight * 0.05,
            ),
            _loginForm(),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            _loginButton(),
            SizedBox(
              height: _deviceHeight * 0.02,
            ),
            _registerLink(),
          ],
        ),
      ),
    );
  }

  Widget _pageTital() {
    return Container(
        height: _deviceHeight * 0.10,
        child: Text(
          'KIBU SELLS',
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ));
  }

  Widget _loginForm() {
    return Container(
        height: _deviceHeight * 0.18,
        child: Form(
          key: _loginFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFields(
                  onSaved: (_value) {},
                  regEx: '',
                  hintText: 'Email',
                  obsecureText: false),
              SizedBox(
                height: 10.0,
              ),
              TextFields(
                  onSaved: (_value) {},
                  regEx: r".{8,}",
                  hintText: 'Password',
                  obsecureText: true)
            ],
          ),
        ));
  }

  Widget _loginButton() {
    return Button(
      name: "Login",
      height: _deviceHeight * 0.065,
      width: _deviceWidth * 0.25,
      onPress: () {},
    );
  }

  Widget _registerLink() {
    return GestureDetector(
      onTap: () {},
      child: Container(
          child: Text(
        'Don\'t have an account?',
        style: TextStyle(color: Colors.blue),
      )),
    );
  }
}
