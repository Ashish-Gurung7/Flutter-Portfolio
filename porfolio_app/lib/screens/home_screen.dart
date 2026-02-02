import 'package:flutter/material.dart';
import 'package:porfolio_app/screens/about_screen.dart';
import 'package:porfolio_app/screens/contact_screen.dart';
import 'package:porfolio_app/screens/project_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  width: 170,
                  height: 250,
                  child: Image.asset(
                    "assets/images/mypicture.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Hi I am Ashish",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Text(
              "Hi, I’m a Flutter developer who loves building beautiful apps.I focus on clean UI, smooth user experience, and reliable code.I’m learning and improving every day through real projects.",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
