import 'base_network.dart';

class CovidDataSource {
  static CovidDataSource instance = CovidDataSource();
  Future<Map<String, dynamic>?> localGlobalData() {
    return BaseNetwork.get("");
  }

  Future<Map<String, dynamic>?> loadCountries() {
    return BaseNetwork.get("countries");
  }

  Future<Map<String, dynamic>?> loadSelectedCountry(iso3) {
    return BaseNetwork.get("countries/$iso3");
  }
}
