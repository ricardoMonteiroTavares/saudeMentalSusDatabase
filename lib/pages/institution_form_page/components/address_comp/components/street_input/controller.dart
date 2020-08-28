import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/address.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var address = GetIt.I.get<Address>();

  String get street => address.street;

  @action
  setStreet(String newValue) {
    address.street = newValue;
    print('$address');
  }
}
