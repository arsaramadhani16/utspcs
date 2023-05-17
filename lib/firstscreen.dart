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
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("SELAMAT DATANG DI APIKASI WOTA48"),
          SizedBox(
            height: 30,
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              _navigatescreen(context);
            },
          ),
          SizedBox(
            height: 15,
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/beranda', arguments: 'Foto Oshi');
            },
          ),
         ],
        ),
      ),
    );
  }
}