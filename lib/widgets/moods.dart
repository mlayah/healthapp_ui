import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MoodsSelector extends StatefulWidget {
  // MoodsSelector({Key key}) : super(key: key);

  @override
  _MoodsSelectorState createState() => _MoodsSelectorState();
}

class _MoodsSelectorState extends State<MoodsSelector> {
  //List<bool> isSelected = List.generate(5, (_) => false);
  List<bool> isSelected = [ true,false,false,false,false];
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        selectedColor: Colors.purple,
        borderColor: Colors.transparent,
        renderBorder: false,
        fillColor: Colors.transparent,
        children: <Widget>[
          Icon(
            Icons.sentiment_very_dissatisfied,
            size: 36,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Icon(
              Icons.sentiment_dissatisfied,
              size: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Icon(
              Icons.sentiment_neutral,
              size: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Icon(
              Icons.sentiment_satisfied,
              size: 36,
            ),
          ),
          Icon(
            Icons.sentiment_very_satisfied,
            size: 36,
          ),
        ],
        isSelected: isSelected,
        onPressed: (int index) {
          setState(() {
            // for (int buttonIndex = 0;
            //     buttonIndex < isSelected.length;
            //     buttonIndex++) {
            //   if (buttonIndex == index) {
            //     isSelected[buttonIndex] = true;
            //   } else {
            //     isSelected[buttonIndex] = false;
            //   }
            // }

            isSelected[index] = !isSelected[index];
          });
        },
      ),
    );
  }
}
