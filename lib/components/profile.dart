import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengembang'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Colors.blue],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/123.jpg'), 
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nama Developer',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                'Soekarno Putra',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.white,
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.confirmation_number, color: Colors.white),
                title: Text('NPM', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text('2110020003', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.school, color: Colors.white),
                title: Text('Kelas', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text('5F SI SISTEM INFORMASI', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text('Kontak', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text('0822-5515-0395', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.white),
                title: Text('Alamat', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text(
                  'Jl. Tatah Pemangkih Laut Komp Bumi Wahyu Utama',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
