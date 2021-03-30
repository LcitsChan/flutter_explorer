import 'package:flutter/material.dart';
import 'package:flutter_explorer/model/license.dart';
import 'package:flutter_explorer/store/license_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class LicensesScreen extends StatefulWidget {
  LicensesScreen({Key key}) : super(key: key);

  @override
  _LicensesScreenState createState() => _LicensesScreenState();
}

class _LicensesScreenState extends State<LicensesScreen> {
  LicenseStore _licenseStore;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _licenseStore = Provider.of<LicenseStore>(context);
    accessLicenses();
  }

  void accessLicenses() {
    _licenseStore.getLicense();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        switch (_licenseStore.state) {
          case StoreState.loading:
            return buildLoading();
            break;
          case StoreState.loaded:
            List<License> _ls = _licenseStore.licenses;
            return Container(
              child: _ls == null || _ls.isEmpty
                  ? buildEmpty()
                  : buildLicenseList(_ls),
            );
            break;
          default:
            return buildEmpty();
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: accessLicenses,
        tooltip: 'Licenses',
        child: Text("WO"),
      ),
    );
  }

  Widget buildLoading() => Center(child: Text("loading..."));

  Widget buildEmpty() => Center(child: Text("Empty"));

  Widget buildLicenseList(List<License> licenses) {
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
