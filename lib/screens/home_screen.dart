import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> categories = [
    {'name': 'Health', 'icon': Icons.local_hospital},
    {'name': 'Food', 'icon': Icons.fastfood},
    {'name': 'Travel', 'icon': Icons.flight},
    {'name': 'Education', 'icon': Icons.school},
    {'name': 'Animals', 'icon': Icons.pets},
    {'name': 'Environment', 'icon': Icons.eco},
    {'name': 'Appearance', 'icon': Icons.face},
    {'name': 'Communication', 'icon': Icons.message},
    {'name': 'Technology', 'icon': Icons.computer},
    {'name': 'Sports', 'icon': Icons.sports},
    {'name': 'Financial', 'icon': Icons.attach_money},
    {'name': 'Transportation', 'icon': Icons.directions_bus},

    {'name': 'Health', 'icon': Icons.local_hospital},
    {'name': 'Food', 'icon': Icons.fastfood},
    {'name': 'Travel', 'icon': Icons.flight},
    {'name': 'Education', 'icon': Icons.school},
    {'name': 'Animals', 'icon': Icons.pets},
    {'name': 'Environment', 'icon': Icons.eco},
    {'name': 'Appearance', 'icon': Icons.face},
    {'name': 'Communication', 'icon': Icons.message},
    {'name': 'Technology', 'icon': Icons.computer},
    {'name': 'Sports', 'icon': Icons.sports},
    {'name': 'Financial', 'icon': Icons.attach_money},
    {'name': 'Transportation', 'icon': Icons.directions_bus},

    {'name': 'Health', 'icon': Icons.local_hospital},
    {'name': 'Food', 'icon': Icons.fastfood},
    {'name': 'Travel', 'icon': Icons.flight},
    {'name': 'Education', 'icon': Icons.school},
    {'name': 'Animals', 'icon': Icons.pets},
    {'name': 'Environment', 'icon': Icons.eco},
    {'name': 'Appearance', 'icon': Icons.face},
    {'name': 'Communication', 'icon': Icons.message},
    {'name': 'Technology', 'icon': Icons.computer},
    {'name': 'Sports', 'icon': Icons.sports},
    {'name': 'Financial', 'icon': Icons.attach_money},
    {'name': 'Transportation', 'icon': Icons.directions_bus},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 8 / 8,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    //builder: (context) => WordsScreen(category: category['name']),
                    builder: (context) => VocabularyScreen(topic: topics[index],icon: topics[index].icon,),
                  ),
                );*/
              },
              child: Card(
                elevation: 2,
                color: Color(0xFF03a9ff),//Color(0xFF00aeef),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(category['icon'], size: 40,color: Colors.white,),
                    const SizedBox(height: 10),
                    Text(category['name'], style: const TextStyle(fontSize: 11)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


