# Portfolio
# Flutter Portfolio App

A simple personal portfolio app built with Flutter that includes:
- Home (intro)
- About Me (background, skills, education)
- Projects (project list with images)
- Contact (email/phone/GitHub/LinkedIn links)

## How to Run the Project

### Requirements
- Flutter SDK installed
- Android Studio / Emulator (or a real phone)
- VS Code (optional)

### Steps
Clone the repo:
git clone < https://github.com/Ashish-Gurung7/Flutter-Portfolio>
cd porfolio_app
flutter pub get
flutter run


### Chalengers i faced and what i learned form them
1) Same AppBar on every screen (repeated code)
 Writing the same navigation AppBar code in every screen was messy.

2) Back button showing in AppBar
When navigating with Navigator.push, Flutter stacked pages and showed the back button.

3) UI overflow / layout issues
I got layout overflow errors when images/text didn’t fit (RenderFlex overflow).

4) URL launcher plugin not working (MissingPluginException)
 url_launcher gave MissingPluginException after adding it.

### What i learned

Building multi-screen apps and navigating between pages

Creating clean UI using Cards, spacing, and consistent typography

Handling Flutter layout problems (overflow, scroll, image sizing)

Using packages like url_launcher for clickable links

GitHub workflow: init → add → commit → push, and organizing a repo properly
