import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  final String data;
  const Beranda({super.key, required this.data});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("layar Beranda"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(data),
            ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Kembali"))
          ],
        ),
      ),
    );
  }
}