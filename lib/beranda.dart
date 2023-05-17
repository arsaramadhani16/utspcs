import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Beranda extends StatelessWidget {
  final String data;
  const Beranda({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beranda"),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(data),
          SizedBox(
            height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/image/freya1.jpg',
                    height: 350.0,
                  ),
                  Image.asset('assets/image/freya2.jpg',
                    height: 350.0,
                  ),
                  Image.asset('assets/image/freya3.jpg',
                    height: 350.0,
                  ),
                ],
              ),
          SizedBox(
            height: 15,
          ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
