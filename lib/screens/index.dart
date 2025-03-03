
import 'package:flutter/material.dart';
import 'package:pancho_hub/screens/contact_screen.dart';
import 'package:pancho_hub/screens/notification_screen.dart';
import 'package:pancho_hub/screens/profile_screen.dart';
import '../widgets/main_drawer.dart';
import 'home_screen.dart';
import 'slider_screen.dart';

class IndexScreen extends StatefulWidget {
  static const String routeName = '/index';
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedIndex = 0;

  List popupItemsList = [
    {'icon': Icons.settings, 'title': 'Settings'},
    {'icon': Icons.person_2, 'title': 'Profile'},
    {'icon': Icons.logout, 'title': 'Logout'},
  ];

  // List of pages to display
  final List<Widget> _pages = [
    const HomeScreen(),
    const ContactScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF03a9ff),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('পঞ্চহাব',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            //fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        /*actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.auto_graph_outlined),
          ),
        ],*/
        //centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                for (int i = 0; i < popupItemsList.length; i++)
                  PopupMenuItem(
                      value: popupItemsList[i]['title'],
                      child: ListTile(
                        leading: Icon(popupItemsList[i]['icon']),
                        title: Text(popupItemsList[i]['title']),
                      ))
              ];
            },
            offset: Offset(0, 50),
            color: Colors.white,
            elevation: 2,
          )
        ],
      ),
      //body: _pages[_selectedIndex],
      body: Column(
        children: [
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF03a9ff),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 28),
              label: 'হোম',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quick_contacts_dialer, size: 28),
              label: 'যোগাযোগ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active, size: 28),
              label: 'নোটিফিকেশন',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_cal, size: 28),
              label: 'প্রোফাইল',
            ),
          ],
        ),
      ),
    );
  }
}
