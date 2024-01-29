import 'package:cinema_app/components/main_scaffold.dart';
import 'package:flutter/material.dart';

import 'routes/book_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = "eCinema";
    // Light theme
    ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber,
        brightness: Brightness.light,
      ),
    );
    // Dark Theme
    ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.amber,
        brightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: title,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const MyHomePage(title: 'Welcome to $title'),
      routes: {
        '/book': (context) => const BookPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: widget.title,
      body: Center(
        child: ElevatedButton(
            child: const Text('Book your tickets.'),
            onPressed: () {
              Navigator.pushNamed(context, '/book');
            }),
      ),
    );
  }
}
