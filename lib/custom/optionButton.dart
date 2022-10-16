// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:realestate_ui/contents.dart';
import 'package:realestate_ui/widget_functions.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({Key? key, required this.text, required this.icon, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
       splashColor: Colors.white.withAlpha(55),
        color: Colors.indigo[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon,color: Colors.white,),addHorizontalSpace(10),
            Text(text,style: TextStyle(color: Colors.white),)
          ],
        )
      ),
    );
  }
}
