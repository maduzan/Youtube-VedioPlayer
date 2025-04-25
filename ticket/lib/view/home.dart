import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pexels.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(
                0.8,
              ), // Black color with opacity (darkens image)
              BlendMode.dstATop, // Blend the color on top of the image
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.end, // Aligns children to the bottom
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: SizedBox(
                height: 40,
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go('/second');
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
