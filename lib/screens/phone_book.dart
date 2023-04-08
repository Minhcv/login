import 'package:flutter/material.dart';

class PhoneBookPage extends StatefulWidget {
  const PhoneBookPage({Key? key}) : super(key: key);

  @override
  State<PhoneBookPage> createState() => _PhoneBookPageState();
}

class _PhoneBookPageState extends State<PhoneBookPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10), child: Text('Phone Book screen')));
  }
}
