import 'package:flutter/material.dart';
import 'package:flutter_explorer/repo/license_repo.dart';
import 'package:flutter_explorer/screen/licenses_screen.dart';
import 'package:flutter_explorer/store/license_store.dart';
import 'package:provider/provider.dart';

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
      home: Provider(
          // create: (_) => LicenseStore(FakeLicenseRepo()),
          create: (_) => LicenseStore(RemoteLicenseRepo()),
          child: LicensesScreen()),
    );
  }
}

