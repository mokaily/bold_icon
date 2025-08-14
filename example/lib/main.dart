import 'package:flutter/material.dart';
import 'package:boldify_icon/boldify_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.blue.shade700;
    final double iconSize = 60;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BoldifyIcon Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BoldifyIcon(Icons.house, size: iconSize, color: color),
                BoldifyIcon(
                  Icons.list,
                  size: iconSize,
                  color: color,
                  fontWeight: FontWeight.w900,
                ),
                BoldifyIcon(
                  Icons.people_alt_outlined,
                  size: iconSize,
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
                BoldifyIcon(
                  Icons.place,
                  size: iconSize,
                  color: color,
                  fontWeight: FontWeight.w400,
                ),
                BoldifyIcon(
                  Icons.settings,
                  size: iconSize,
                  color: color,
                  fontWeight: FontWeight.w100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
