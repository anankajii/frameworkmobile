import 'package:flutter/material.dart';
import 'halaman_detail.dart';

class Acara22PageView extends StatelessWidget {
  const Acara22PageView({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> gambar = [
      "100.webp",
      "200w.webp",
      "whtt.gif",
    ];

    final List<Color> colors = [
      Colors.orange,
      Colors.blue,
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.deepPurple],
          ),
        ),
        child: PageView.builder(
          itemCount: gambar.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HalamanDetail(
                      gambar: gambar[index],
                      color: colors[index],
                    ),
                  ),
                );
              },
              child: Center(
                child: Hero(
                  tag: gambar[index],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/img/${gambar[index]}",
                      width: 250,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}