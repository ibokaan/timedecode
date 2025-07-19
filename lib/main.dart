import 'package:flutter/material.dart';

void main() {
  runApp(const TimeDecodePage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Debug etiketi kapalı
      home: TimeDecodePage(),
    );
  }
}

class TimeDecodePage extends StatelessWidget {
  const TimeDecodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeDecode'),
        centerTitle: true, // Başlığı ortalar
        backgroundColor: Colors.deepPurple, // İstersen rengini değiştir
      ),
      body: const SizedBox.shrink(), // Boş bir alan, hiç içerik yok
    );
  }
}
