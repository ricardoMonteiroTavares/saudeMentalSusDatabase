import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:saudeMentalSusDatabase/entities/address.dart';

part 'controller.g.dart';

class Controller = _Controller with _$Controller;

abstract class _Controller with Store {
  @observable
  var address = GetIt.I.get<Address>();

  String get houseNumber => address.houseNumber;

  @action
  setHouseNumber(String newValue) {
    address.houseNumber = newValue;
    print('$address');
  }
}
