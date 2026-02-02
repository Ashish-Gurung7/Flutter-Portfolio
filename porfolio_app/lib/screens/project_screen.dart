import 'package:flutter/material.dart';
import 'package:porfolio_app/screens/about_screen.dart';
import 'package:porfolio_app/screens/contact_screen.dart';
import 'package:porfolio_app/screens/home_screen.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            ),
            child: Text("Home"),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => AboutScreen()),
            ),
            child: Text("About me"),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => ProjectScreen()),
            ),
            child: Text("Projects"),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => ContactScreen()),
            ),
            child: Text("Contact"),
          ),
        ],
      ),
    );
}}