// about_page.dart
import 'package:flutter/material.dart';
import 'package:prakpert9/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang'),
        backgroundColor: const Color(0xFF6A11CB),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      size: 60,
                      color: Color(0xFF6A11CB),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Aplikasi Login & Dashboard',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Versi 1.0.0',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Identitas Mahasiswa',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    _buildInfoRow('Nama', 'Fina Julianti'),
                    _buildInfoRow('NIM', 'H1D023119'),
                    _buildInfoRow('Shift', 'E'),
                    _buildInfoRow('Program Studi', 'Informatika'),
                    _buildInfoRow(
                      'Universitas',
                      'Universitas Jenderal Soedirman',
                    ),
                    _buildInfoRow('Mata Kuliah', 'Pemrograman Mobile'),
                    _buildInfoRow('Tugas', 'Praktikum 9'),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: Text(
                '© 2025 - Fina Julianti',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
      drawer: const Sidemenu(),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const Text(': '),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
