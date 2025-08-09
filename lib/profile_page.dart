import 'package:flutter/material.dart';
import 'summary_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userCityController = TextEditingController();

  final List<String> courses = ['Flutter', 'Dart', 'Java', 'C#', 'Python'];
  String? selectedCourse; // عنصر واحد فقط

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'The UserName'),
              controller: userNameController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Your City'),
              controller: userCityController,
            ),
            const SizedBox(height: 20),

            // DropdownButton
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Select course',
                border: OutlineInputBorder(),
              ),
              value: selectedCourse,
              items: courses.map((course) {
                return DropdownMenuItem(
                  value: course,
                  child: Text(course),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCourse = value;
                });
              },
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final userName = userNameController.text.trim();
                final userCity = userCityController.text.trim();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SummaryPage(
                      userName: userName,
                      userCity: userCity,
                      courses: selectedCourse != null ? [selectedCourse!] : [],
                    ),
                  ),
                );
              },
              child: const Text('Go to Summary'),
            ),
          ],
        ),
      ),
    );
  }
}
