
import 'package:flutter/material.dart';
import 'screens/contact_screen.dart';
import 'screens/home_screen.dart';
import 'screens/index.dart';
import 'screens/notification_screen.dart';
import 'screens/profile_screen.dart';
import 'widgets/main_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PanchoHub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: IndexScreen.routeName,
      routes: {
        IndexScreen.routeName : (_) => const IndexScreen(),
        MainDrawer.routeName : (_) => const MainDrawer(),
        HomeScreen.routeName : (_) => const HomeScreen(),
        ContactScreen.routeName : (_) => const ContactScreen(),
        NotificationScreen.routeName : (_) => const NotificationScreen(),
        ProfileScreen.routeName : (_) => const ProfileScreen(),


      },
    );
  }
}



// foregroundColor: Colors.white,
// backgroundColor: const Color(0xFFe84132),
// iconTheme: const IconThemeData(color: Colors.white),