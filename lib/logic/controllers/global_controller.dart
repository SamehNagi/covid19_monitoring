import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../services/network/covid_data_source.dart';

class GlobalController extends GetxController {
  // CovidDataSource? covidDataSource;

  // GlobalController({this.covidDataSource});

  // For global
  var lastUpdate = "-".obs;
  var confirmedTotal = 0.0.obs;
  var recoveredTotal = 0.0.obs;
  var deathTotal = 0.0.obs;

  // For dropdown data
  var coutries = [].obs;
  var selectedCountries = "IDN".obs;
  var countryDetailConfirmed = 0.obs;
  var countryDetailRecovered = 0.obs;
  var countryDetailDeaths = 0.obs;

  //for checking success or not
  var isSelectedCountrySuccess = false.obs;

  final numberFormat = NumberFormat("#,###");

  @override
  void onInit() {
    print("GlobalController - onInit");
    _fetchGlobalData();
    // _fetchCountries();
    // _fetchCountrySelected();
    super.onInit();
  }

  void _fetchGlobalData() async {
    try {
      Map<String, dynamic>? data = await covidDataSource?.loadGlobalData();
      print("cek bay 1 ${data}");
      globalEntity.value = GlobalEntity.fromJson(data ?? {});
    } catch (_) {}
  }
}
