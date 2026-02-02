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
     body: ListView.builder(
  padding: const EdgeInsets.all(16),
  itemCount: projects.length,
  itemBuilder: (context, index) {
   

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                aspectRatio: 1.7, 
                child: Image.asset(
                  projects[index]["imagePath"],
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 12),

            Text(
              projects[index]["name"],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),

            Text(projects[index]["description"]),
            const SizedBox(height: 6),

            Text(
              "Tech: ${projects[index]
              ["technologies"]}",
              style: const TextStyle(color: Colors.black54),
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

List projects =[
  {
    'name': "Clothing App",
    'description': "asdasdasdasdasd",
    'technologies': "asdasda",
    'imagePath': "assets/images/clothingApp.png",
  },
  {
    'name': "Journal App",
    'description': "asdasd",
    'technologies': "asdasd",
    'imagePath': "assets/images/journalApp.png",
  },
  {
    'name': "Groceries app",
    'description': "asdasd",
    'technologies': "asdfsdf",
    'imagePath': "assets/images/clothingApp.png",
  },
];