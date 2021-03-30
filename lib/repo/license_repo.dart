import 'package:flutter_explorer/model/license.dart';
import 'package:flutter_explorer/network/ServiceFactory.dart';
import 'package:flutter_explorer/network/service/github_service.dart';

abstract class LicenseRepo {

  Future<List<License>> getLicenses();
}

class FakeLicenseRepo extends LicenseRepo {

  @override
  Future<List<License>> getLicenses() {
    License l = License(
      key: "mit",
      name: "MIT License",
      spdxId: "MIT",
      url: "https://api.github.com/licenses/mit",
      nodeId: "MDc6TGljZW5zZTEz"
    );
    List<License> ls = List.empty(growable: true);
    ls.add(l);
    return Future.value(ls);
  }
}

class RemoteLicenseRepo extends LicenseRepo {

  @override
  Future<List<License>> getLicenses() {
    return GithubService(ServiceFactory.getDio()).fetchLicenses();
  }
}