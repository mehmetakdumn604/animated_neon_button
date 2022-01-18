import 'package:flutter/material.dart';

import 'components/neon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NeonButton(
              color1: Colors.pinkAccent,
              color2: Colors.indigoAccent,
            ),
          ],
        ),
      ),
    );
  }
}
