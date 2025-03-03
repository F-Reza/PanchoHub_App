import 'package:flutter/material.dart';

class DoctorsScreen extends StatefulWidget {
  static const String routeName = '/doctors';
  final String? category;
  final String? icon;
  const DoctorsScreen({super.key, this.category, this.icon});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF03a9ff),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          spacing: 8,
          children: [
            Image.asset(widget.icon!, width: 30, height: 25),
            Text(widget.category!),
          ],
        ),
      ),
      body: const Center(
        child: Text('Doctors Screen'),
      ),
    );
  }
}
