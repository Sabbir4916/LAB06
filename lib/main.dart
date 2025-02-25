import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Images with Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Drawer header with cross button to close
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Drawer Header',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.pop(context); // Close the drawer
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 209, 223, 235)),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.info, color: const Color.fromARGB(255, 44, 44, 43)),
                title: Text('About'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Main photo section
              Image.network(
                "https://images.unsplash.com/photo-1737392402963-a489a17826eb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
              Image.network(
                "https://images.unsplash.com/photo-1738058170868-78462be12ff2?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
              Image.network(
                "https://media.istockphoto.com/id/1388206034/photo/landscape-of-the-mist-covered-mountain-in-the-morning-with-warmed-sun-beams-for-background.jpg?s=612x612&w=0&k=20&c=uiBi3iHngIMIgmpUjSX_uhdH-z9jHK5EjOG1TzZpOpE=",
              ),
            ],
          ),
        ),
      ),
    );
  }
}