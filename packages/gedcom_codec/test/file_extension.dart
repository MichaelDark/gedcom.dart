// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:file/local.dart' as utf_ext;
import 'package:utf_ext/utf_ext.dart' as utf_ext;

extension FileExtension on File {
  String readUtfAsStringSync() {
    final fs = utf_ext.LocalFileSystem();
    final file = fs.file(path);

    final buffer = StringBuffer();

    file.readUtfAsStringSync(pileup: buffer);

    return buffer.toString();
  }
}
