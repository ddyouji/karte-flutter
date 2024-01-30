import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:karte_flutter/core.dart';
import 'package:karte_flutter/iam.dart';
import 'package:karte_flutter/notification.dart';
import 'package:karte_flutter/variables.dart';
import 'package:karte_flutter/visual_tracking.dart';
import 'package:karte_flutter/micro_cms.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter KARTE Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter KARTE Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const List<String> _titles = [
    "Core",
    "IAM",
    "Variables",
    "Notification",
    "VT",
    "Micro CMS",
  ];
  static List<Widget> _widgetOptions = <Widget>[
    CoreScreen(),
    IAMScreen(),
    VariablesScreen(),
    NotificationScreen(),
    VTScreen(),
    MicroCMS(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}: ${_titles[_selectedIndex]}"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Core',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'IAM',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sync),
            label: 'Variables',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phonelink_sharp),
            label: 'VT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset_linked),
            label: 'Micro CMS',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
