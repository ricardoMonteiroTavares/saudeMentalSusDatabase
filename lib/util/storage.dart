import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Storage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/database.json');
  }

  Future<File> writeJson(String json) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString(json);
  }
}
