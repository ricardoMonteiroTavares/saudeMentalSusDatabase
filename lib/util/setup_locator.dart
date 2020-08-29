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
  locator.registerLazySingleton<City>(() => City());
}

void resetCoord() {
  locator.resetLazySingleton<Coord>();
}

void resetInstitution() {
  locator.resetLazySingleton<Institution>();
}

void resetAddress() {
  locator.resetLazySingleton<Address>();
}