import 'package:flutter/material.dart';

class Project14DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color widgetColor;

  Project14DraggableWidget({Key key, this.offset, this.widgetColor})
      : super(key: key);

  @override
  _Project14DraggableWidget createState() => _Project14DraggableWidget();
}

class _Project14DraggableWidget extends State<Project14DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      right: offset.dy,
      child: Draggable(
        data: widget.widgetColor,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor,
        ),
        feedback: Container(
          width: 110.0,
          height: 110.0,
          color: widget.widgetColor.withOpacity(0.5),
        ),
        // 拖拽松手
        onDraggableCanceled: (velocity, offset) {
          setState(() {
            this.offset = offset;
          });
        },
      ),
    );
  }
}
