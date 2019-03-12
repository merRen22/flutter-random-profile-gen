import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LargeFab extends StatelessWidget {

  LargeFab({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.deepPurple,
      splashColor: Colors.purple,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 30.0
                  ),child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const<Widget>[
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.green
                      ),
                      SizedBox(width: 16.0),
                      Text("about",
                      style: TextStyle(color: Colors.white))
                    ],
                  ),

      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),

    );
  }
  
}