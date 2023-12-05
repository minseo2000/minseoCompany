import 'package:flutter/material.dart';

class CustomTweenText extends StatefulWidget {

  late String text;
  late TextStyle style;

  CustomTweenText({Key? key, required String text, required TextStyle style}){
    this.text = text;
    this.style = style;
  }



  @override
  State<CustomTweenText> createState() => _CustomTweenTextState(text: text, style: this.style );
}

class _CustomTweenTextState extends State<CustomTweenText> with SingleTickerProviderStateMixin{
  _CustomTweenTextState({
    required String text,
    required TextStyle style,
}){
    this.message = text;
    this.style = style;
  }
  static const Duration _duration = Duration(seconds: 2);
  late String message;
  late final AnimationController controller;
  late final Animation<String> animation;
  late ScrollController _scrollController;
  late TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: AnimatedBuilder(
                  animation: animation,
                  builder: (context, child){
                    return Text(
                      animation.value,
                      style: this.style,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    _scrollController = ScrollController();
    controller = AnimationController(vsync: this, duration: _duration);
    animation = TypewriterTween(end: message).animate(controller);
    // _scrollController.addListener(() {
    //   print(_scrollController.offset);
    // });
    controller.addListener(() {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
    controller.forward().whenComplete(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
class TypewriterTween extends Tween<String> {
  TypewriterTween({String begin = '', String end = ''})
      : super(begin: begin, end: end);

  @override
  String lerp(double t) {
    var cutoff = (end!.length * t).round();
    return end!.substring(0, cutoff);
  }
}
