import 'package:animation_flutter/views/home_screen/widgets/stagger_animation_home/tile/animated_listview.dart';
import 'package:animation_flutter/views/home_screen/widgets/stagger_animation_home/tile/fade_container.dart';
import 'package:animation_flutter/views/home_screen/widgets/stagger_animation_home/tile/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimationHome extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimationHome({@required this.controller})
      : containerGrow = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        ),
        listSlidePosition = EdgeInsetsTween(
          begin: EdgeInsets.only(bottom: 0),
          end: EdgeInsets.only(bottom: 80),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.325,
              0.8,
              curve: Curves.ease,
            ),
          ),
        ),
        fadeAnimetion = ColorTween(
          begin: Color.fromRGBO(247, 64, 106, 1.0),
          end: Color.fromRGBO(247, 64, 106, 0.0),
        ).animate(
            CurvedAnimation(parent: controller, curve: Curves.decelerate));

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;
  final Animation<Color> fadeAnimetion;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(
              containerGrow: containerGrow,
            ),
            AnimatedListView(
              listSlidePosition: listSlidePosition,
            )
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            faceAnimattion: fadeAnimetion,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
