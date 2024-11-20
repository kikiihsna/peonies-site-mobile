import 'package:flutter/material.dart';
import 'package:peonies_site/screens/menu.dart';
import 'package:peonies_site/screens/productentry_form.dart';
import 'package:peonies_site/screens/list_productentry.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Peonies Site',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Welcome to Peonies Site, your one-stop shop for fresh, beautiful flowers!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home Page'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_chart),
              title: const Text('Add New Flower'),
              // Bagian redirection ke MoodEntryFormPage
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  ),
                );
              },
            ),
            ListTile(
            leading: const Icon(Icons.forest_outlined),
            title: const Text('Flower Collection'),
            onTap: () {
                // Route menu ke halaman mood
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductEntryPage()),
                );
            },
        ),
        ],
      ),
    );
  }
}