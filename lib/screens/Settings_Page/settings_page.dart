import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_amalgam/globals.dart';

import 'Settings_Page_widgets/settings_button.dart';
import 'Settings_Page_widgets/settings_title.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = "/SettingsPage";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkMode(),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black87),
        ),
        iconTheme: IconThemeData(color: textColor()),
        // centerTitle: true,
        backgroundColor: darkMode(),
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SettingsTitle(title: "Account"),
            SettingsButton(
              title: "Edit Details",
              onTap: () {},
              leading: Icon(Icons.keyboard_arrow_right, color: textColor()),
            ),
            SettingsButton(
              title: "Change Password",
              onTap: () {},
              leading: Icon(Icons.lock_outline, color: textColor()),
            ),
            SettingsButton(
              title: "Log Out",
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.of(context).pop();
                });
              },
              leading: Icon(Icons.logout, color: Colors.red),
            ),
            SettingsTitle(title: "Preferences"),
            SettingsButton(
              title: "Dark Mode",
              onTap: () {},
              leading: Container(
                  child: Switch.adaptive(value: false, onChanged: (val) {})),
            ),
            SettingsButton(
              title: "Notifications",
              onTap: () {},
              leading: Container(
                  child: Switch.adaptive(value: false, onChanged: (val) {})),
            ),
            SettingsButton(
              title: "Text Size",
              onTap: () {},
              leading: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  "Medium",
                  style: TextStyle(fontSize: 18, color: textColor()),
                ),
              ),
            ),
            SettingsButton(
              title: "Language",
              onTap: () {},
              leading: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  "English",
                  style: TextStyle(fontSize: 18, color: textColor()),
                ),
              ),
            ),
            SettingsTitle(
              title: "Amalgam",
            ),
            SettingsButton(
              title: "Help",
              onTap: () {},
              leading: Icon(
                Icons.help_outline,
                color: textColor(),
              ),
            ),
            SettingsButton(
              title: "Contact Us",
              onTap: () {},
              leading: Icon(
                Icons.mail_outline,
                color: textColor(),
              ),
            ),
            SettingsButton(
              title: "About Us",
              onTap: () {},
              leading: Icon(
                Icons.info_outline,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
