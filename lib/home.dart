import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<AppData> apps;

  const Home({super.key, required this.apps});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: apps.length,
          itemBuilder: (context, index) {
            final app = apps[index];
            return ListTile(
              title: Text(app.title),
              subtitle: Text(app.description),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => app.app),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class AppData {
  final String title;
  final String description;
  final Widget app;

  const AppData({
    required this.title,
    required this.description,
    required this.app,
  });
}
