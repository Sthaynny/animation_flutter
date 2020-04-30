import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ["TRABALHO", 'estudos', 'casa'];
  int _category = 0;

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          disabledColor: Colors.white30,
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: _category > 0 ? selectBackward : null,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.2,
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        IconButton(
          disabledColor: Colors.white30,
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          onPressed: _category < categories.length - 1 ? selectForward : null,
        ),
      ],
    );
  }
}
