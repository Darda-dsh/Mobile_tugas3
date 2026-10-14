import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  
                  backgroundImage: AssetImage(
                      'assets/images/Carmen.jpg'),
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Darda_dsh',
                  style: GoogleFonts.playfair(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'MAHASISWA ENGINERING',
                  style: GoogleFonts.sourceSans3(
                    fontSize: 20.0,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                const InfoCard(
                  icon: Icons.phone,
                  text: '+62 85349686493',
                ),
                const InfoCard(
                  icon: Icons.email,
                  text: 'dardasaepulloh@gmail.com',
                ),
                const InfoCard(
                  icon: Icons.camera_alt,
                  text: '@darda_dsh (Instagram)',
                ),
                const InfoCard(
                  icon: Icons.code,
                  text: 'github.com/darda_dsh (Github)',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal[900],
        ),
        title: Text(
          text,
          style: TextStyle(
            color: Colors.teal[900],
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}