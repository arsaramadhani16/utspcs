import 'dart:html';
import 'package:flutter/material.dart';
import 'package:utspcs/profile.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  Future<void> _navigatescreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Profile()),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              _navigatescreen(context);
              // Navigator.pushNamed(context, '/profile');
            },
            child: Text('Menuju Layar Profile')),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/beranda', arguments: 'Selamat Datang ke Layar Beranda');
            },
            child: Text('Menuju Layar Beranda'))
         ],
        ),
      ),
    );
  }
}