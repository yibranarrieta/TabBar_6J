import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Péstaña app',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(),
    );
  }
} //miapp

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.redAccent,

            indicatorSize: TabBarIndicatorSize.tab,

            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.pinkAccent), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.zoom_out_outlined)),
              Tab(icon: Icon(Icons.vape_free_outlined)),
              Tab(icon: Icon(Icons.label_important_outline)),
              Tab(icon: Icon(Icons.safety_divider)),
              Tab(icon: Icon(Icons.gamepad)),
            ],
          ),
          title: Text('Tabs Arrieta Villegas'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.zoom_out_outlined, size: 350),
            Icon(Icons.vape_free_outlined, size: 350),
            Icon(Icons.label_important_outline, size: 350),
            Icon(Icons.gamepad, size: 350),
            Icon(Icons.safety_divider, size: 350),
          ],
        ),
      ),
    );
  }
} //_MyHomePageState State<MyHomePage>
