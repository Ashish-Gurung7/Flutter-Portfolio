import 'package:flutter/material.dart';
import 'package:porfolio_app/appbar_ui/appbar_ui.dart';


class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarUi(),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            elevation: 5,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AspectRatio(
                      aspectRatio: 1.7,
                      child: Image.asset(
                        projects[index]["imagePath"],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                   SizedBox(height: 12),
                  Text(
                    projects[index]["name"],
                    style:  TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 6),
                  Text(
                    projects[index]["description"],
                    style:  TextStyle(fontSize: 14, height: 1.5),
                  ),
                   SizedBox(height: 10),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Tech: ${projects[index]["technologies"]}",
                      style:  TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List projects = [
  {
    'name': "Clothing App",
    'description': "Built a e-commerce app for shopping clothes for the customers and admins can sell their products",
    'technologies': "Flutter",
    'imagePath': "assets/images/clothingApp.png",
  },
  {
    'name': "Journal App",
    'description': "Built an windows journal application for the user to write journal.",
    'technologies': "c#, sqlite, Blazor, MAUI ",
    'imagePath': "assets/images/journalApp.png",
  },
  {
    'name': "Groceries app",
    'description': "Currently working on to built an e-commerce app for shopping groceries for the customers and admins can sell their products",
    'technologies': "Flutter, django",
    'imagePath': "assets/images/grocery.png",
  },
];
