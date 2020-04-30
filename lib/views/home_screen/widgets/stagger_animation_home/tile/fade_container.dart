import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {
  final Animation<Color> faceAnimattion;

  const FadeContainer({Key key, @required this.faceAnimattion})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'fade',
      child: Container(
        decoration: BoxDecoration(color: faceAnimattion.value),
      ),
    );
  }
}
