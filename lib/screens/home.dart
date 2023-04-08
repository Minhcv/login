import 'package:flutter/material.dart';
import 'package:login/screens/chat.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/phone_book.dart';

import 'call.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ChatPage(),
    const CallPage(),
    const PhoneBookPage(),
  ];

  final List<String> _title = [
    'Đoạn chat',
    'Cuộc gọi',
    'Danh bạ',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Row(children: const [
                CircleAvatar(
                  backgroundImage:
                      AssetImage('images/user.jpg'), // Đường dẫn hình ảnh
                  radius: 20, // Bán kính của khung hình tròn
                ),
                Text(' Thanh Minh')
              ]),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Đoạn chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Cuộc gọi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online_outlined),
            label: 'Danh bạ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
