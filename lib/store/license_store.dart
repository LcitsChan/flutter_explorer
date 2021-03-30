import 'package:flutter_explorer/model/license.dart';
import 'package:flutter_explorer/repo/license_repo.dart';
import 'package:mobx/mobx.dart';

part 'license_store.g.dart';

class LicenseStore = _LicenseStore with _$LicenseStore;

enum StoreState { initial, loading, loaded }

abstract class _LicenseStore with Store {
  final LicenseRepo _licenseRepo;

  _LicenseStore(this._licenseRepo);

  @observable
  ObservableFuture<List<License>> _licensesFuture;

  @observable
  List<License> licenses;

  @observable
  String errorMessage;

  @computed
  StoreState get state {
    if (_licensesFuture == null ||
        _licensesFuture.status == FutureStatus.rejected) {
      return StoreState.initial;
    }
    return _licensesFuture.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  Future getLicense() async {
    try {
      errorMessage = null;
      _licensesFuture = ObservableFuture(_licenseRepo.getLicenses());
      licenses = await _licensesFuture;
    } on Error {
      errorMessage = "Couldn't fetch licenses";
    }
  }
}
