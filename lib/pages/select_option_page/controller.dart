import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saudeMentalSusDatabase/entities/city.dart';
import 'package:saudeMentalSusDatabase/pages/home_form_page/home_form_page.dart';

class Controller {
  Future<void> newData(BuildContext context) async {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => HomeFormPage()),
        (route) => false);
  }

  Future<void> loadData(BuildContext context) async {
    InputElement uploadInput = FileUploadInputElement();
    uploadInput.accept = 'json';
    uploadInput.multiple = false;
    uploadInput.click();

    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;

      if (files.length == 1) {
        final file = files[0];
        FileReader reader = FileReader();

        reader.onLoadEnd.listen((e) {
          _edit(reader.result, context);
        });

        reader.onError.listen((fileEvent) {
          print("Some Error occured while reading the file");
        });

        reader.readAsArrayBuffer(file);
      }
    });
  }

  _edit(Uint8List charCodes, BuildContext context) {
    String source = String.fromCharCodes(charCodes);

    Map json = jsonDecode(source);
    City cityEdit = City.fromJson(json);

    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => HomeFormPage(
                  cityEdit: cityEdit,
                )),
        (route) => false);
  }
}
