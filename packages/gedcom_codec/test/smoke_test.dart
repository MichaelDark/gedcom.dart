import 'dart:io';

import 'package:gedcom_codec/gedcom_codec.dart';
import 'package:test/test.dart';

import 'file_extension.dart';

void main() {
  test(
    'Smoke: GedcomCodec deserializes and serializes test files',
    () {
      final testFiles = [
        '../../assets/testfiles/gedcom70/age.ged',
        '../../assets/testfiles/gedcom70/escapes.ged',
        '../../assets/testfiles/gedcom70/extension-record.ged',
        '../../assets/testfiles/gedcom70/extensions.ged',
        '../../assets/testfiles/gedcom70/filename-1.ged',
        '../../assets/testfiles/gedcom70/lang.ged',
        '../../assets/testfiles/gedcom70/long-url.ged',
        '../../assets/testfiles/gedcom70/maximal70-lds.ged',
        '../../assets/testfiles/gedcom70/maximal70-memories1.ged',
        '../../assets/testfiles/gedcom70/maximal70-memories2.ged',
        '../../assets/testfiles/gedcom70/maximal70-tree1.ged',
        '../../assets/testfiles/gedcom70/maximal70-tree2.ged',
        '../../assets/testfiles/gedcom70/maximal70.ged',
        '../../assets/testfiles/gedcom70/minimal70.ged',
        '../../assets/testfiles/gedcom70/notes-1.ged',
        '../../assets/testfiles/gedcom70/obje-1.ged',
        '../../assets/testfiles/gedcom70/remarriage1.ged',
        '../../assets/testfiles/gedcom70/remarriage2.ged',
        '../../assets/testfiles/gedcom70/same-sex-marriage.ged',
        '../../assets/testfiles/gedcom70/voidptr.ged',
        '../../assets/TGC551.ged',
      ];

      for (final testFile in testFiles) {
        smokeTestFile(testFile);
      }
    },
  );
}

void smokeTestFile(String testFile) {
  final codec = const GedcomCodec();
  final gedcomString = File(testFile).readUtfAsStringSync();

  final document = codec.decode(gedcomString);
  expect(
    document.version,
    isA<String>(),
    reason: '$testFile failed the test',
  );
  expect(
    document.version,
    isNotEmpty,
    reason: '$testFile failed the test',
  );

  final anotherDocument = codec.decode(gedcomString);
  expect(
    document,
    equals(anotherDocument),
    reason: '$testFile failed the test',
  );

  final encoded = const GedcomEncoder().convert(document, eol: '\n');
  expect(
    gedcomString.trim(),
    equals(encoded.trim()),
    reason: '$testFile failed the test',
  );
}

extension on GedcomDocument {
  String get version =>
      getByTag('HEAD').getByTag('GEDC').getByTag('VERS').lineVal!;
}
