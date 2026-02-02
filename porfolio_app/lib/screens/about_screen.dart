import 'package:flutter/material.dart';
import 'package:porfolio_app/screens/contact_screen.dart';
import 'package:porfolio_app/screens/home_screen.dart';
import 'package:porfolio_app/screens/project_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
      body: Container(
        width: double.infinity,
        height: 600,
        child: Card(
          elevation: 10,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Background"),
                Text(
                  "Hi, I’m Ashish, a 3rd-year bachelor’s student and Flutter developer. I build mobile and web apps with Flutter and Dart, focusing on clean UI and smooth user experience. I’m currently improving Firebase and REST API integration through projects. I’m actively looking for a Flutter internship where I can contribute and learn from a team.",
                ),
                Text("Skills"),
                Text("""Flutter & Dart (UI, navigation, state management basics)
              

Firebase (Auth, Firestore, Storage)

APIs (REST API integration, JSON parsing)

UI/UX (clean layouts, responsive design)

Tools (Git/GitHub, VS Code, Postman)"""),

                Text("Education Section"),
                Text("""Bachelor’s Degree 
Currently in 3rd year • Expected graduation: 2026"""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
