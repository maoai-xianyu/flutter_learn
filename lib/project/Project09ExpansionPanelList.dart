import 'package:flutter/material.dart';

class Project09ExpansionPanelList extends StatefulWidget {
  @override
  _Project09ExpansionPanelListState createState() =>
      _Project09ExpansionPanelListState();
}

class _Project09ExpansionPanelListState
    extends State<Project09ExpansionPanelList> {
  List<int> mList;
  List<ExpandStateBean> expandStateList;

  // 构造方法，内部使用的
  _Project09ExpansionPanelListState() {
    mList = new List();
    expandStateList = new List<ExpandStateBean>();
    for (var i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  _setCurrentItemState(int index, bool isExpended) {
    setState(() {
      expandStateList.forEach((item) {
        if (item.index == index) {
          item.isOpen = !isExpended;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelList Demo'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            _setCurrentItemState(index, isExpanded);
          },
          children: mList.map((index) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('This is No.$index'),
                );
              },
              body: ListTile(
                title: Text('expansion no.$index'),
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class ExpandStateBean {
  var isOpen;
  var index;

  ExpandStateBean(this.index, this.isOpen);
}
