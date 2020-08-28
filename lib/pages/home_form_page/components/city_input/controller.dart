import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';
part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var city = GetIt.I.get<City>();

  String get cityName => city.name;

  @action
  setCity(String newValue) {
    city.name = newValue;
    print('$city');
  }
}
