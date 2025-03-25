# GEDCOM Codec

Codec to serialize/deserialize GEDCOM strings.  

Codec works on most GEDCOM formats since it validates only lines format and levels nesting.

## Usage

```dart
import 'package:gedcom_codec/gedcom_codec.dart';

void main() {
  // GEDCOM parsing:
  final document = GedcomCodec().decode(gedcomString);
  //           or  GedcomDecoder().convert(gedcomString);

  // GEDCOM usage:
  final individuals = document.getAllByTag('INDI');
  for (final individual in individuals) {
    print(
      'Individual ${individual.xref}: '
      '${individual.getByTagOrNull('NAME')?.lineVal}',
    );
  }
  
  // GEDCOM encoding:
  final encodedGedcomString = 
        GedcomCodec().encode(gedcomString);
  // or GedcomEncoder().convert(gedcomString, indent: '', eol: '\n');
  print(encodedGedcomString)
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
