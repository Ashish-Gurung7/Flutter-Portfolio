import 'package:flutter/material.dart';
import 'package:porfolio_app/appbar_ui/appbar_ui.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarUi(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 450,
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Background",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Hi, I am Ashish, a 3rd-year bachelor student and Flutter developer."
                      "I build mobile and web apps with Flutter and Dart, focusing on clean UI and smooth user experience."
                      "I am currently improving Firebase and REST API integration through projects. I am actively looking for a Flutter internship where I can contribute and learn from a team.",
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Flutter & Dart (UI, navigation, state management basics)\n"
                      "Firebase (Auth, Firestore, Storage)\n"
                      "APIs (REST API integration, JSON parsing)\n"
                      "UI/UX (clean layouts, responsive design)\n",
                    ),

                    Text(
                      "Education Section",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Bachelors Degree\n"
                      "Currently in 3rd year • Expected graduation: 2026",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
