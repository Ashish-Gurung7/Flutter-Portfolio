import 'package:flutter/material.dart';
import 'package:porfolio_app/appbar_ui/appbar_ui.dart';
import 'package:url_launcher/url_launcher.dart';



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
    const email = "ashishgrg422@gmail.com";
    const phone = "+9779826628489";
    const githubUrl = "https://github.com/Ashish-Gurung7";
    const linkedInUrl = "https://www.linkedin.com/in/ashish-gurung-08480730a/";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppbarUi(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
           Text(
            "Contact",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          ),
           SizedBox(height: 8),
         
          Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
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
                  leading:  Icon(Icons.phone),
                  title:  Text("Phone"),
                  subtitle: Text(phone),
                  onTap: () => _openUrl(context, Uri.parse("tel:$phone")),
                ),
              ],
            ),
          ),

           SizedBox(height: 12),

          Card(
            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            child: Column(
              children: [
                ListTile(
                  leading:  Icon(Icons.code),
                  title:  Text("GitHub"),
                  subtitle: Text(githubUrl),
                  onTap: () => _openUrl(context, Uri.parse(githubUrl)),
                ),
                 Divider(height: 1),
                ListTile(
                  leading:  Icon(Icons.work),
                  title:  Text("LinkedIn"),
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
