// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class mtyuab

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curriculum Vitae'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/Foto_AndikaNoorIsmawan.png'),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Data Diri',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Name: Andika Noor Ismawan'),
              const SizedBox(height: 4),
              const Text('Date of Birth: October 18th, 2000'),
              const SizedBox(height: 4),
              const Text('Email: noorismawanandika@student.esaunggul.ac.id'),
              const SizedBox(height: 4),
              const Text('Phone: +6281312004621'),
              const SizedBox(height: 16),
              const Text(
                'Riwayat Pekerjaan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ..._buildWorkExperienceList(),
              const SizedBox(height: 16),
              const Text(
                'Pendidikan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ..._buildEducationList(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildWorkExperienceList() {
    return [
      const Text('Company Name: Kriptonesia'),
      const SizedBox(height: 4),
      const Text('Job Title: Community Manager'),
      const SizedBox(height: 4),
      const Text('Duration: 2020 - 2022'),
      const SizedBox(height: 16),
      const Text('Company Name: PT. Polllux Properties Indonesia'),
      const SizedBox(height: 4),
      const Text('Job Title: IT Support'),
      const SizedBox(height: 4),
      const Text('Duration: 2022 - 2023'),
      const SizedBox(height: 16),
      const Text('Company Name: PT. Arnawa Teknologi Informasi'),
      const SizedBox(height: 4),
      const Text('Job Title: UI/UX & Product Manager'),
      const SizedBox(height: 4),
      const Text('Duration: 2023 - Present'),
    ];
  }

  List<Widget> _buildEducationList() {
    return [
      const Text('Degree: Bachelor of Science in Computer Science'),
      const SizedBox(height: 4),
      const Text('Institution: Universitas Esa Unggul'),
      const SizedBox(height: 4),
      const Text('Duration: 2021 - Present'),
      const SizedBox(height: 16),
    ];
  }
}