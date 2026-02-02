import 'package:flutter/material.dart';
import 'package:porfolio_app/appbar_ui/appbar_ui.dart';

import 'package:porfolio_app/screens/contact_screen.dart';
import 'package:porfolio_app/screens/project_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarUi(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 180,
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 18,
                        offset: const Offset(0, 10),
                        color: Colors.black.withOpacity(0.10),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      "assets/images/myPicture.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 22),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.06),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Flutter Developer-Intern",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 14),

               Text(
                "Hi, I am Ashish ",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                ),
              ),

              SizedBox(height: 10),

               Text(
                "Hi, I am a Flutter developer who loves building beautiful apps. "
                "I focus on clean UI, smooth user experience, and reliable code. "
                "I am learning and improving every day through real projects.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),

               SizedBox(height: 18),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => ProjectScreen()),
                    ),
                    child: Text("View Projects"),
                  ), 
                  SizedBox(width: 10,),
                  ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => ContactScreen()),
                    ),
                    child:Text("Contact Me"),
                  ),
                ],
                
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
