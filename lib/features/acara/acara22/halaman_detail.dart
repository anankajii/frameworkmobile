import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  final String gambar;
  final Color color;

  const HalamanDetail({
    super.key,
    required this.gambar,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Stack(
        children: [

          Center(
            child: Hero(
              tag: gambar,
              child: Image.asset(
                "assets/img/$gambar",
                width: 300,
              ),
            ),
          ),

          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}