import 'package:flutter/material.dart';
import 'package:makarya/komunitas_list.dart';
import 'package:makarya/detail_komunitas.dart';
import 'package:makarya/beranda_komunitas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Makarya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(58, 24, 5, 1)),
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: KomunitasListPage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/komunitas': (context) => KomunitasListPage(),
        '/detail_komunitas': (context) => const DetailKomunitas(),
        '/beranda_komunitas': (context) => const BerandaKomunitas(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/komunitas'),
              child: const Text('Komunitas'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/detail_komunitas'),
              child: const Text('Detail Komunitas'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/beranda_komunitas'),
              child: const Text('Beranda Komunitas'),
            ),
          ],
        ),
      ),
    );
  }
}
