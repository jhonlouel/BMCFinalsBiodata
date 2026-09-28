import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  Widget bioField(String label, String value) {
    return TextField(
      controller: TextEditingController(text: value),
      readOnly: true,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          'My Bio-Data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // TITLE
            const Center(
              child: Text(
                'BIO-DATA',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // PROFILE PICTURE
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/profile.jpg',
                      width: 140,
                      height: 160,
                      fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 140,
                      height: 160,
                      color: Colors.grey[200],
                      child: const Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 25),

            // PERSONAL INFORMATION
            const Text(
              'Personal Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bioField(
              'Full Name',
              'Enriquez, Jhon Louel C.',
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: bioField(
                    'Gender',
                    'Male',
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: bioField(
                    'Age',
                    '21',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            bioField(
              'Date of Birth',
              'November 12, 2004',
            ),

            const SizedBox(height: 12),

            bioField(
              'Address',
              'Caloocan, Philippines',
            ),

            const SizedBox(height: 12),

            bioField(
              'Nationality',
              'Filipino',
            ),

            const SizedBox(height: 12),

            bioField(
              'Civil Status',
              'Single',
            ),

            const SizedBox(height: 25),

            // CONTACT INFORMATION
            const Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bioField(
              'Cellphone Number',
              '09940747817',
            ),

            const SizedBox(height: 12),

            bioField(
              'Email Address',
              'ejholouel@gmail.com',
            ),

            const SizedBox(height: 25),

            // EDUCATIONAL BACKGROUND //
            const Text(
              'Educational Background',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bioField(
              'School / College',
              'Global Reciprocal Colleges',
            ),

            const SizedBox(height: 12),

            bioField(
              'Course',
              'Bachelor of Science in Information Technology',
            ),

            const SizedBox(height: 12),

            bioField(
              'Year Level',
              '3rd Year',
            ),

            const SizedBox(height: 12),

            bioField(
              'Section',
              '304',
            ),

            const SizedBox(height: 25),

            // STUDENT INFORMATION
            const Text(
              'Student Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bioField(
              'Student Status',
              'Regular Student',
            ),

            const SizedBox(height: 12),

            bioField(
              'Field of Interest',
              'Information Technology',
            ),

            const SizedBox(height: 12),

            bioField(
              'Career Goal',
              'To become a skilled IT professional',
            ),

            const SizedBox(height: 25),

            // SKILLS
            const Text(
              'Technical Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bioField(
              'Programming',
              'Dart, Python, C#, C++',
            ),

            const SizedBox(height: 12),

            bioField(
              'Web Development',
              'HTML, CSS, JavaScript',
            ),

            const SizedBox(height: 12),

            bioField(
              'Other Skills',
              'Flutter, Git, GitHub, Cisco Packet Tracer',
            ),

            const SizedBox(height: 25),

            // PERSONAL INTERESTS
            const Text(
              'Personal Interests',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            bioField(
              'Hobbies',
              'Watching movies, listening to music, playing online games and reading books ',
            ),

            const SizedBox(height: 12),

            bioField(
              'Interests',
              'Technology, programming, traveling, and learning new things',
            ),

            const SizedBox(height: 25),

            // ABOUT ME
            const Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'I am a 3rd year BS Information Technology student '
                'at Global Reciprocal Colleges. I am interested in '
                'technology and programming, and I am continuously '
                'improving my skills in software and web development. '
                'As a student, I want to gain more knowledge and '
                'experience that I can use in my future career in IT.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // FOOTER
            const Center(
              child: Text(
                'Bio-Data',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
