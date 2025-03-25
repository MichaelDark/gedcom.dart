# GEDCOM Structures

Dart Classes for GEDCOM structures (generated from GEDCOM 7 machine-readable specification).  
Based on [gedcom_codec](https://pub.dev/packages/gedcom_codec).  

## Usage

```dart
import 'package:gedcom_codec/gedcom_codec.dart';
import 'package:gedcom_structures/gedcom_7.dart';

void main() {
  final document = GedcomCodec().decode(gedcomString)
              .toGedcom7Document();
  //          ^^^^^^^^^^^^^^^^^
  //         converts [GedcomDocument] to [Gedcom7Document].

  final families = document.getAll<FamilyRecordStructure>();
  //                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  //         allows searching by Dart Type,
  //
  //         e.g. [FamilyRecordStructure] is extending
  //              sealed [Gedcom7Structure], which is also
  //              allows for a proper pattern matching.

  for (final family in families) {
    print(
      'Family ${family.xref}:'
      '\n  husband:${family.husb?.xref}'
      //                    ^^^^
      //     generated structures have getters for corresponding
      //     nested structures as defined in the specification.
      '\n  wife:${family.wife?.xref}'
      '\n  children:${family.chilList.toList()}',
    );
  }

  final individuals = document.getAll<IndividualStructure>();
  for (final individual in individuals) {
    print(
      'Individual ${individual.xref}:'
      '\n  sex: ${individual.sex?.valueText}'
      //                          ^^^^^^^^^
      //     [GedcomStructureValueExtension] on [GedcomStructure] allows
      //     to parse the `payload` as a corresponding type.
      '\n  name: ${individual.nameList.firstOrNull?.valueText}',
    );
  }
}
```

## Additional information

Links:
- [GEDCOM.io](https://gedcom.io/)
- [FamilySearch GitHub Organization](https://github.com/FamilySearch)
- [GEDCOM GitHub Repository](https://github.com/FamilySearch/GEDCOM)
- [GEDCOM-registries GitHub Repository](https://github.com/FamilySearch/GEDCOM-registries)

GEDCOM files sources:
- [Example FamilySearch GEDCOM 7.0 Files from gedcom.io](https://gedcom.io/tools/#example-familysearch-gedcom-70-files)
- [GEDCOM 5.5 Torture Test Files from geditcom.com](https://www.geditcom.com/gedcom.html)
- [Some every old samples from gedcom.org](https://www.gedcom.org/samples.html)

```
NOTICE:
This work comprises, is based on, or is derived from the FAMILYSEARCH GEDCOM™
Specification, © 1984-2025 Intellectual Reserve, Inc. All rights reserved.
“FAMILYSEARCH GEDCOM™” and “FAMILYSEARCH®” are trademarks of Intellectual
Reserve, Inc. and may not be used except as allowed by the Apache 2.0 license that governs this
work or as expressly authorized in writing and in advance by Intellectual Reserve, Inc.
```
