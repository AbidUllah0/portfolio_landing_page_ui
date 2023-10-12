import 'package:flutter/material.dart';
import 'package:portfolio_landing_page/Widgets/custom_text.dart';

class AnimatedCard extends StatefulWidget {
  final imgPath;
  final text;
  final fit;
  final reverse;
  final height;
  final width; //double width

  AnimatedCard({
    required this.imgPath,
    required this.text,
    this.fit,
    this.width,
    this.height,
    this.reverse,
  });

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  //animation controller
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 4),
  )..repeat(reverse: true);

  //begin and end of animation
  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Colors.teal,
          ),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset(
                widget.imgPath,
                height: widget.height == null ? 200 : widget.height,
                width: widget.width == null ? 200 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10,
              ),
              CustomText(
                text: widget.text,
                fontSize: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
