import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              foregroundDecoration: const BoxDecoration(color: Colors.black26),
              width: double.infinity,
              height: 400,
              child: Image.asset(
                'lib/images/room.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              bottom: 335,
              left: 170,
              child: Text(
                'DETAIL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.5,
                ),
              ),
            ),
            const Positioned(
              bottom: 325,
              right: 345,
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
