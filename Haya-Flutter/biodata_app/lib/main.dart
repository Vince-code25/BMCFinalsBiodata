import 'package:flutter/material.dart';

void main() {
  runApp(const BioDataApp());
}


class MyBioData {
  static const name = 'Vince Jason Haya';
  static const mobile = '+69 945 750 9029';
  static const email = 'vyoshida.02@email.com';
  static const fatherName = 'N/A';
  static const gender = 'Male';
  static const dateOfBirth = '17/05/2000';
  static const maritalStatus = 'Single';
  static const religion = 'Roman Catholic';
  static const languagesKnown = 'English, Filipino, Cebuano';
  static const qualification = 'BS Information Technology,\nGlobal Reciprocal Colleges, 2024';
  static const experience = 'No experience yet';
  static const address = 'Blk 9G Lot 12 phase 3c Tanigue St. Brgy 20,\nCaloocan City, Philippines';
  static const place = 'Caloocan City';
  static const date = '24/09/2026';
}


class BioDataApp extends StatelessWidget {
  const BioDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bio Data',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: AppBar(title: const Text('Bio Data')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: 480,
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(4),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: Text(
                    'BIO DATA',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          _Row('Name', MyBioData.name),
                          _Row('Mobile', MyBioData.mobile),
                          _Row('Email id', MyBioData.email),
                          _Row("Father's Name", MyBioData.fatherName),
                          _Row('Gender', MyBioData.gender),
                          _Row('Date of Birth', MyBioData.dateOfBirth),
                          _Row('Marital Status', MyBioData.maritalStatus),
                          _Row('Religion', MyBioData.religion),
                          _Row('Languages Known', MyBioData.languagesKnown),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 90,
                      height: 110,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black45)),
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/photo.jpeg', fit:BoxFit.cover),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const _Block('Qualification', MyBioData.qualification),
                const _Block('Experience', MyBioData.experience),
                const _Block('Address', MyBioData.address),
                const SizedBox(height: 24),
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: const [
                   Text('Place : ${MyBioData.place}'),
                   SizedBox(height: 4),
                   Text('Date  : ${MyBioData.date}'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String label;
  final String value;
  const _Row(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 118,
            child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          ),
          const Text(':  '),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

class _Block extends StatelessWidget {
  final String label;
  final String value;
  const _Block(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 4),
          Text(value),
        ],
      ),
    );
  }
}
