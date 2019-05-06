import 'package:flutter/material.dart';
import 'Project14DraggableWidget.dart';

class Project14Draggable extends StatefulWidget {
  @override
  _Project14DraggableState createState() => _Project14DraggableState();
}

class _Project14DraggableState extends State<Project14Draggable> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖动'),
      ),
      body: Stack(
        children: <Widget>[
          Project14DraggableWidget(
            offset: Offset(80.0, 80.0),
            widgetColor: Colors.tealAccent,
          ),
          Project14DraggableWidget(
            offset: Offset(180.0, 80.0),
            widgetColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: _draggableColor,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
