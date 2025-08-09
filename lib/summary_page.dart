import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  final String userName;
  final String userCity;
  final List<String> courses;

  const SummaryPage({
    super.key,
    required this.userName,
    required this.userCity,
    required this.courses,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Summary Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User Name: $userName'),
            Text('City: $userCity'),
            const SizedBox(height: 12),
            const Text('Selected Courses:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            if (courses.isEmpty)
              const Text('You are not select any course')
            else
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: courses.map((c) => Chip(label: Text(c))).toList(),
              ),
          ],
        ),
      ),
    );
  }
}
