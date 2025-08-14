import 'package:flutter/material.dart';

import 'boldify_icon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const BoldIconDemoPage(),
    );
  }
}

class BoldIconDemoPage extends StatelessWidget {
  const BoldIconDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.blue.shade700;
    final double iconSize = 60;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            Spacer(),
            Text(
              'Default Icons',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 12),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.house, size: iconSize, color: Colors.blue),
                    Icon(Icons.list, size: iconSize, color: Colors.blue),
                    Icon(Icons.people_alt_outlined, size: iconSize, color: Colors.blue),
                    Icon(Icons.place, size: iconSize, color: Colors.blue),
                    Icon(Icons.settings, size: iconSize, color: Colors.blue),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // ===== Bottom Row: BoldIcons =====
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'BoldifyIcons ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '(fontWeight: bold – default)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BoldifyIcon(Icons.house, size: iconSize, color: color, fontWeight: FontWeight.bold),
                    BoldifyIcon(Icons.list, size: iconSize, color: color, fontWeight: FontWeight.bold),
                    BoldifyIcon(Icons.people_alt_outlined, size: iconSize, color: color, fontWeight: FontWeight.bold),
                    BoldifyIcon(Icons.place, size: iconSize, color: color, fontWeight: FontWeight.bold),
                    BoldifyIcon(Icons.settings, size: iconSize, color: color, fontWeight: FontWeight.bold),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
