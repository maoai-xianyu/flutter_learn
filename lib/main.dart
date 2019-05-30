import 'package:flutter/material.dart';
import 'demo/DemoText.dart';
import 'demo/DemoContainer.dart';
import 'demo/DemoListView.dart';
import 'demo/DemoGridView.dart';
import 'demo/DemoColumnWidget.dart';
import 'demo/DemoStack.dart';
import 'demo/DemoCard.dart';
import 'demo/DemoCard.dart';
import 'demo/DemoNavigatorReturnData.dart';
import 'demo/DemoImageAssets.dart';
import 'demo/DemoDio.dart';
import 'demo/DemoDioStulff.dart';
import 'demo/DemoDioFakeHeaders.dart';
import 'demo/DemoProdive.dart';
import 'project/Project02BottomNavigationBarDefine.dart';
import 'project/Project03NavigatorAnimation.dart';
import 'project/Project04DullPolish.dart';
import 'project/Project05StagePage.dart';
import 'project/Project06SearchProgress.dart';
import 'project/Project07WrapFlowLayout.dart';
import 'project/Project08ExpansionTile.dart';
import 'project/Project09ExpansionPanelList.dart';
import 'project/Project10CustomClipper.dart';
import 'project/Project11ScreenAnimation.dart';
import 'project/Project12RightSlideBack.dart';
import 'project/Project13ToolTips.dart';
import 'project/Project14Draggable.dart';
import 'package:provide/provide.dart';
import 'provide/Counter.dart';

void main() {
  final providers = Providers()
    ..provide(Provider.function((context) => Counter(0)));
  return runApp(
    ProviderNode(
      child: App(),
      providers: providers,
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('provide'),
      ),
      body: DemoProvide(),
    );
  }
}
