import 'package:get_it/get_it.dart';
import 'package:saudeMentalSusDatabase/entities/address.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';
import 'package:saudeMentalSusDatabase/entities/coord.dart';
import 'package:saudeMentalSusDatabase/entities/institution.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton<Coord>(() => Coord());
  locator.registerLazySingleton<Institution>(() => Institution());

  locator.registerLazySingleton<Address>(() => Address());
}

void resetCoord() {
  locator.unregister<Coord>();
  locator.registerLazySingleton<Coord>(() => Coord());
}

void resetInstitution() {
  locator.unregister<Institution>();
  locator.registerLazySingleton<Institution>(() => Institution());
}

void resetAddress() {
  locator.unregister<Address>();
  locator.registerLazySingleton<Address>(() => Address());
}

void initCity(City city) {
  if (city == null) {
    locator.registerLazySingleton<City>(() => City());
  } else {
    locator.registerLazySingleton(() => city);
  }
}

void initInstitution(Institution institution) {
  if (institution != null) {
    locator.unregister<Institution>();
    locator.registerLazySingleton<Institution>(() => institution);
  }
}

void initAddress(Address address) {
  if (address != null) {
    locator.unregister<Address>();
    locator.registerLazySingleton<Address>(() => address);
  }
}

void initCoord(Coord coord) {
  if (coord != null) {
    locator.unregister<Coord>();
    locator.registerLazySingleton<Coord>(() => coord);
  }
}
