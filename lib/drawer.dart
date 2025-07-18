import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Drawer Page")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white, // เปลี่ยนสีตัวหนังสือ
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Item 1',
                style: TextStyle(color: Colors.deepPurple), // เปลี่ยนสี
              ),
            ),
            ListTile(
              title: Text(
                'Item 2',
                style: TextStyle(color: Colors.deepOrange), // เปลี่ยนสี
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('นี่คือหน้า Drawer'),
      ),
    );
  }
}
