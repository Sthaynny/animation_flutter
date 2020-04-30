import 'package:animation_flutter/views/home_screen/widgets/stagger_animation_home/tile/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  const AnimatedListView({Key key, @required this.listSlidePosition})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: "Estudar Flutter",
          subtitle: "UDEMY",
          image: AssetImage('images/L.jpg'),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "estudar Flutter 2 ",
          subtitle: "UDEMY 2 ",
          image: AssetImage('images/L.jpg'),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
