import 'package:gedcom_codec/gedcom_codec.dart';
import 'package:gedcom_structures/gedcom_7.dart';

const gedcomString = '''
0 HEAD
1 GEDC
2 VERS 7.0
1 NOTE This file is intended to provide coverage of parts of the specification and does not contain meaningful historical or genealogical data.
0 @F1@ FAM
1 MARR Y
2 DATE 27 MAR 2022
2 PLAC Place
1 HUSB @I1@
1 WIFE @I2@
1 CHIL @I4@
1 CHIL @VOID@
0 @F2@ FAM
1 MARR
2 DATE 1998
1 CHIL @I1@
0 @I1@ INDI
1 NAME Lt. Cmndr. Joseph "John" /de Allen/ jr.
1 NAME John /Doe/
1 NAME Aka
1 NAME Immigrant Name
1 SEX M
1 BURI
2 DATE 30 MAR 2022
1 DEAT
2 DATE 28 MAR 2022
2 PLAC Somewhere
1 BIRT
2 DATE 1 JAN 2000
1 CHR
2 DATE 9 JAN 2000
1 FAMC @F2@
1 FAMS @VOID@
1 FAMS @F1@
1 SOUR @S1@
2 PAGE 1
1 SOUR @S2@
0 @I2@ INDI
1 NAME Maiden Name
1 NAME Married Name
1 NAME Professional Name
1 SEX F
1 FAMS @F1@
0 @I3@ INDI
1 SEX X
0 @I4@ INDI
1 SEX U
1 FAMC @F1@
0 @S1@ SOUR
1 AUTH Author
1 TITL Title
1 ABBR Abbreviation
1 PUBL Publication info
0 @S2@ SOUR
1 TITL Source Two
0 TRLR
''';

void main() {
  final document = GedcomCodec().decode(gedcomString).toGedcom7Document();

  final families = document.getAll<FamilyRecordStructure>();
  for (final family in families) {
    print(
      'Family ${family.xref}:'
      '\n  husband:${family.husb?.xref}'
      '\n  wife:${family.wife?.xref}'
      '\n  children:${family.chilList.toList()}',
    );
  }
  final individuals = document.getAll<IndividualStructure>();
  for (final individual in individuals) {
    print(
      'Individual ${individual.xref}:'
      '\n  sex: ${individual.sex?.valueText}'
      '\n  name: ${individual.nameList.firstOrNull?.valueText}',
    );
  }
}
