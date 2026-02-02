import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:porfolio_app/screens/about_screen.dart';
import 'package:porfolio_app/screens/home_screen.dart';
import 'package:porfolio_app/screens/project_screen.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _openUrl(BuildContext context, Uri uri) async {
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Could not open: ${uri.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const email = "ashishgrg422@gmail.com.com";
    const phone = "+9779826628489";
    const githubUrl = "https://github.com/Ashish-Gurung7";
    const linkedInUrl = "https://www.linkedin.com/in/ashish-gurung-08480730a/";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            ),
            child:  Text("Home"),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => AboutScreen()),
            ),
            child:  Text("About me"),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) =>  ProjectScreen()),
            ),
            child: Text("Projects"),
          ),
          TextButton(
            onPressed: () {}, // already on Contact screen
            child: Text("Contact"),
          ),
            SizedBox(width: 12),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
           Text(
            "Contact",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),

          Card(
            elevation: 2,
            child: Column(
              children: [
                ListTile(
                  leading:  Icon(Icons.email),
                  title:  Text("Email"),
                  subtitle: Text(email), 
                  onTap: () => _openUrl(context, Uri.parse("mailto:$email")),
                ),
                 Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  subtitle: Text(phone),
                  onTap: () => _openUrl(context, Uri.parse("tel:$phone")),
                ),
              ],
            ),
          ),

          SizedBox(height: 12),

          Card(
            elevation: 2,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.code),
                  title: Text("GitHub"),
                  subtitle: Text(githubUrl),
                  onTap: () => _openUrl(context, Uri.parse(githubUrl)),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text("LinkedIn"),
                  subtitle: Text(linkedInUrl),
                  onTap: () => _openUrl(context, Uri.parse(linkedInUrl)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
