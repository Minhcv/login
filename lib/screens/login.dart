import 'package:flutter/material.dart';
import 'package:login/theme/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(50),
            child: ListView(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    child: const Text(
                      'Đăng nhập',
                      style: MyCustomTheme.textStyleTitle,
                    )),
                Container(
                  margin: MyCustomTheme.marginTop,
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email hoặc số điện thoại',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: MyCustomTheme.borderSideColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: MyCustomTheme.marginTop,
                  child: TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mật khẩu',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: MyCustomTheme.borderSideColor,
                        )),
                  ),
                ),
                Container(
                    margin: MyCustomTheme.marginTop,
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyCustomTheme.buttonColorPink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(75.0),
                          side: const BorderSide(
                              color: MyCustomTheme.buttonColorPink),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text('Tiếp tục'),
                    )),
                Container(
                  margin: MyCustomTheme.marginTop,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      'Đăng ký',
                      style: MyCustomTheme.textStyleTextButton,
                    ),
                  ),
                )
              ],
            )));
  }
}
