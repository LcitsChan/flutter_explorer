import 'package:flutter/material.dart';
import 'package:flutter_explorer/model/license.dart';
import 'package:flutter_explorer/network/ServiceFactory.dart';
import 'package:flutter_explorer/network/service/github_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<License> _licenses = List.empty(growable: true);

  void accessLicenses() {
    var gs = GithubService(ServiceFactory.getDio()).getLicenses();
    gs.asStream().listen((event) {
      setState(() {
        _licenses.clear();
        _licenses.addAll(event);
      });
    }, onError: (e) {
      print(e.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          child: _licenses.length == 0
              ? Text("Empty")
              : buildSliverList(_licenses)),
      floatingActionButton: FloatingActionButton(
        onPressed: accessLicenses,
        tooltip: 'Licenses',
        child: Text("WO"),
      ),
    );
  }

  Widget buildSliverList(List<License> licenses) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var item = licenses[index];
        return ListTile(
          title: Text(item.key),
          subtitle: Text(item.name),
          dense: true,
          onTap: () => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(item.key))),
        );
      },
      itemCount: licenses.length,
    );
  }
}
