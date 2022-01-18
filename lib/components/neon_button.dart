import 'package:flutter/material.dart';

class NeonButton extends StatefulWidget {
  final Color color1;
  final Color color2;

  const NeonButton(
      {Key? key,
      this.color1 = Colors.lightBlue,
      this.color2 = Colors.lightGreen})
      : super(key: key);

  @override
  _NeonButtonState createState() => _NeonButtonState();
}

class _NeonButtonState extends State<NeonButton> {
  bool neon = false;
  double scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          neon = !neon;
          scale = neon ? 1.1 : 1.0;
        });
      },
      child: AnimatedContainer(
        width: 200,
        height: 50,
        transform: Matrix4.identity()..scale(scale),
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              widget.color1,
              widget.color2,
            ],
          ),
          boxShadow: neon
              ? [
                  BoxShadow(
                    blurRadius: 15,
                    spreadRadius: 1,
                    color: widget.color1.withOpacity(.5),
                    offset: const Offset(-8, 0),
                  ),
                  BoxShadow(
                    blurRadius: 15,
                    spreadRadius: 1,
                    color: widget.color2.withOpacity(.5),
                    offset: const Offset(8, 0),
                  ),
                  BoxShadow(
                    blurRadius: 15,
                    spreadRadius: 1,
                    color: widget.color1.withOpacity(.5),
                    offset: const Offset(-8, 0),
                  ),
                  BoxShadow(
                    blurRadius: 15,
                    spreadRadius: 1,
                    color: widget.color2.withOpacity(.5),
                    offset: const Offset(8, 0),
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              neon ? Icons.lightbulb : Icons.lightbulb_outline_sharp,
              color: Colors.white,
            ),
            Text(
              neon ? "Neon ışığı kapa" : "Neon ışığı aç",
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
