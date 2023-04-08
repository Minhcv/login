import 'package:flutter/material.dart';
import 'package:login/theme/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      'Đăng ký tài khoản mới',
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
                  child: TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nhập lại mật khẩu',
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
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Text('Đăng ký'),
                    )),
                Container(
                  margin: MyCustomTheme.marginTop,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      'Đã có tài khoản',
                      style: MyCustomTheme.textStyleTextButton,
                    ),
                  ),
                )
              ],
            )));
  }
}
