import 'package:flutter/material.dart';
import 'package:flutter_blog_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //set theme of the app
      theme: BlogAppTheme.lightTheme,
      darkTheme: BlogAppTheme.darkTheme,
      // themeMode: ThemeMode.system,
      home: const AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sample App")),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Text("Heading", style: Theme.of(context).textTheme.headline2),
          Text("Subheading", style: Theme.of(context).textTheme.subtitle2),
          Text("Body", style: Theme.of(context).textTheme.headline2)
        ],
      ),
      ),
    );
  }
}