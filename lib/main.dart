import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // The index of the currently selected navigation bar item
  int _selectedIndex = 0;

  // Method to handle navigation when a bottom navigation item is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images with Bottom Navigation'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Display different content based on selected index
              if (_selectedIndex == 0) ...[
                // Home Page Content
                Image.network(
                  "https://images.unsplash.com/photo-1734917141553-274732d788cb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyM3x8fGVufDB8fHx8fA%3D%3D",
                ),
                Image.network(
                  "https://media.istockphoto.com/id/1186837330/photo/rainforest-valley.jpg?s=612x612&w=0&k=20&c=NCAOR1y9eLW8nCH8nrqNpcqwvWmegTuN5rSCN4cZDg8=",
                ),
                Image.network(
                  "https://images.unsplash.com/photo-1737392402963-a489a17826eb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0NHx8fGVufDB8fHx8fA%3D%3D",
                ),
              ] else if (_selectedIndex == 1) ...[
                // Settings Page Content
                Center(
                  child: Text('Settings Page'),
                ),
              ] else if (_selectedIndex == 2) ...[
                // About Page Content
                Center(
                  child: Text('About Page'),
                ),
              ],
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}