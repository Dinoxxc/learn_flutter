// ignore_for_file: deprecated_member_use, library_private_types_in_public_api, prefer_const_constructors

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
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText1: TextStyle(fontSize: 16, color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

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
              const Text('Name: Andika Noor Ismawan', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 4),
              const Text('Date of Birth: October 18th, 2000', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 4),
              const Text('Email: noorismawanandika@student.esaunggul.ac.id', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 4),
              const Text('Phone: +6281312004621', style: TextStyle(fontSize: 16)),
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
      ListTile(
        leading: const Icon(Icons.business, color: Colors.blue),
        title: const Text('Company Name: Kriptonesia', style: TextStyle(fontSize: 16)),
        subtitle: const Text('Job Title: Community Manager', style: TextStyle(fontSize: 14)),
        trailing: const Text('2020 - 2022', style: TextStyle(fontSize: 14)),
      ),
      const SizedBox(height: 8),
      ListTile(
        leading: const Icon(Icons.business, color: Colors.blue),
        title: const Text('Company Name: PT. Polllux Properties Indonesia', style: TextStyle(fontSize: 16)),
        subtitle: const Text('Job Title: IT Support', style: TextStyle(fontSize: 14)),
        trailing: const Text('2022 - 2023', style: TextStyle(fontSize: 14)),
      ),
      const SizedBox(height: 8),
      ListTile(
        leading: const Icon(Icons.business, color: Colors.blue),
        title: const Text('Company Name: PT. Arnawa Teknologi Informasi', style: TextStyle(fontSize: 16)),
        subtitle: const Text('Job Title: UI/UX & Product Manager', style: TextStyle(fontSize: 14)),
        trailing: const Text('2023 - Present', style: TextStyle(fontSize: 14)),
      ),
    ];
  }

  List<Widget> _buildEducationList() {
    return [
      ListTile(
        leading: const Icon(Icons.school, color: Colors.blue),
        title: const Text('Degree: Bachelor of Science in Computer Science', style: TextStyle(fontSize: 16)),
        subtitle: const Text('Institution: Universitas Esa Unggul', style: TextStyle(fontSize: 14)),
        trailing: const Text('2021- Present', style: TextStyle(fontSize: 14)),
      ),
      const SizedBox(height: 8),
      ListTile(
        leading: const Icon(Icons.school, color: Colors.blue),
        title: const Text('Degree: Science', style: TextStyle(fontSize: 16)),
        subtitle: const Text('Institution: SMA Negeri 73 Jakarta', style: TextStyle(fontSize: 14)),
        trailing: const Text('2015 - 2028', style: TextStyle(fontSize: 14)),
      ),
    ];
  }
}