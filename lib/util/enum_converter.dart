class EnumConverter {
  static List<String> convertListDynamicToListString(List<dynamic> inputs) {
    if (inputs == null) return null;
    List<String> result = List<String>();
    for (String string in inputs) {
      result.add(string);
    }
    return result;
  }

  static String convertEnumToString(Object o) => o.toString().split('.').last;

  static T convertStringToEnum<T>(String value, List<T> values) =>
      values.firstWhere((element) => value == convertEnumToString(element),
          orElse: () => null);
}
