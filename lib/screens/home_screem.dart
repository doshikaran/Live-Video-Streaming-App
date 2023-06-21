import 'package:flutter/material.dart';
import 'package:twitch/screens/feed_screen.dart';
import 'package:twitch/screens/go_live.dart';
import 'package:twitch/utils/color.dart';
// import 'package:provider/provider.dart';
// import 'package:twitch/providers/user_provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 1;
  List<Widget> pages = [
    const FeedScreen(),
    const GoLive(),
    const Center(child: Text('Browse'))
  ];
  onPageChange(int page) {
    setState(() {
      _page = page;
    });
    _page = page;
  }

  @override
  Widget build(BuildContext context) {
    // final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: buttonColor,
        unselectedItemColor: primaryColor,
        backgroundColor: backgroundColor,
        unselectedFontSize: 12,
        onTap: onPageChange,
        currentIndex: _page,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_rounded),
            label: 'Go Live',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.copy),
            label: 'Browse',
          )
        ],
      ),
      body: pages[_page],
    );
  }
}
