import 'package:flutter/material.dart';
import 'package:tarea_2_0/contact_detail.dart';
import 'package:tarea_2_0/Contacts_Page.dart';
import 'package:tarea_2_0/New_Contact_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/contacts',
      routes: {
        '/contacts': (BuildContext context) => ContactsPage(),
        '/contact_d': (BuildContext context) => const ContactDetail(),
        '/ncontact': (BuildContext context) => NewContactPage()
      },
    );
  }
}
