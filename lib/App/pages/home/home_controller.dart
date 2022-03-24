import 'package:ca_firebase_app/App/pages/home/home_presenter.dart';
import 'package:ca_firebase_app/Domain/entities/city.dart';
import 'package:ca_firebase_app/Domain/repositories/city_repository.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller {
  final HomePresenter _presenter;

  HomeController(CityRepository _cityRepository)
      : _presenter = HomePresenter(_cityRepository);

  List<City>? cities;

  @override
  void onInitState() {
    _presenter.getCity();
    super.onInitState();
  }

  @override
  void initListeners() {
    _presenter.getCityOnNext = (List<City>? response) {
      if (response != null) {
        cities = response;

        refreshUI();
      }
    };

    _presenter.getCityOnError = (e) {
      print(e);
    };
  }

  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }
}
