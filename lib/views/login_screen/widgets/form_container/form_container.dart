import 'package:animation_flutter/views/login_screen/widgets/form_container/tile/input_tile.dart';
import 'package:flutter/material.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          child: Column(
        children: <Widget>[
          InputFild(
            icon: Icons.person_outline,
            obscure: false,
            hint: "UserName",
          ),
          InputFild(
            icon: Icons.lock_outline,
            obscure: true,
            hint: "UserName",
          ),
        ],
      )),
    );
  }
}
