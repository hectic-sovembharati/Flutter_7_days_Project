import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Me'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello! I am Sovem Jung Bharati, a passionate Flutter developer and IT student.\n\n'
              'I love building beautiful apps and learning new technologies every day.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 30),

            // Skills Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Skills & Technologies',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Chip(
                        label: Text('Flutter'),
                        backgroundColor: Colors.blue.withOpacity(0.2),
                      ),
                      Chip(
                        label: Text('Dart'),
                        backgroundColor: Colors.blue.withOpacity(0.2),
                      ),
                      Chip(
                        label: Text('Firebase'),
                        backgroundColor: Colors.orange.withOpacity(0.2),
                      ),
                      Chip(
                        label: Text('Git'),
                        backgroundColor: Colors.grey.withOpacity(0.2),
                      ),
                      Chip(
                        label: Text('UI/UX'),
                        backgroundColor: Colors.purple.withOpacity(0.2),
                      ),
                      Chip(
                        label: Text('REST API'),
                        backgroundColor: Colors.green.withOpacity(0.2),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Experience Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experience',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.work, color: Colors.green),
                    title: Text('Flutter Developer Intern'),
                    subtitle: Text('Tech Company • 2023 - Present'),
                  ),
                  ListTile(
                    leading: Icon(Icons.school, color: Colors.green),
                    title: Text('IT Student'),
                    subtitle: Text('University • 2021 - 2025'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Text(
              'Connect With Me ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.globe,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    _launchURL('https://www.google.com');
                  },
                ),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    _launchURL('https://www.facebook.com');
                  },
                ),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 30,
                    color: Colors.purple,
                  ),
                  onPressed: () {
                    _launchURL('https://www.instagram.com');
                  },
                ),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.envelope,
                    size: 30,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    _launchURL('mailto:example@email.com');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
