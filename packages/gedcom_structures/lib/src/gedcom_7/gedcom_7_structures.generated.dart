part of 'gedcom_7_structure.dart';

Gedcom7Structure _parseStructure({
  required int level,
  required String tag,
  required String? xref,
  required String? lineVal,
  required Iterable<GedcomStructure>? substructures,
}) {
  return switch (tag) {
    'ABBR' => AbbreviationStructure._,
    'ADDR' => AddressStructure._,
    'ADOP' => AdoptionStructure._,
    'FAMC' => FamilyChildStructure._,
    'ADR1' => AddressLine1Structure._,
    'ADR2' => AddressLine2Structure._,
    'ADR3' => AddressLine3Structure._,
    'AGE' => AgeAtEventStructure._,
    'AGNC' => ResponsibleAgencyStructure._,
    'ALIA' => AliasStructure._,
    'ANCI' => AncestorInterestStructure._,
    'ANUL' => AnnulmentStructure._,
    'ASSO' => AssociatesStructure._,
    'AUTH' => AuthorStructure._,
    'BAPL' => BaptismLatterDaySaintStructure._,
    'BAPM' => BaptismStructure._,
    'BARM' => BarMitzvahStructure._,
    'BASM' => BasMitzvahStructure._,
    'BIRT' => BirthStructure._,
    'BLES' => BlessingStructure._,
    'BURI' => DepositingRemainsStructure._,
    'CALN' => CallNumberStructure._,
    'CAST' => CasteStructure._,
    'CAUS' => CauseStructure._,
    'CHAN' => ChangeStructure._,
    'CHIL' => ChildStructure._,
    'CHR' => ChristeningStructure._,
    'CHRA' => ChristeningAdultStructure._,
    'CITY' => CityStructure._,
    'CONF' => ConfirmationStructure._,
    'CONL' => ConfirmationLatterDaySaintStructure._,
    'CONT' => ContinuedStructure._,
    'COPR' => CopyrightStructure._,
    'CORP' => CorporateNameStructure._,
    'CREA' => CreationStructure._,
    'CREM' => CremationStructure._,
    'CROP' => CropStructure._,
    'CTRY' => CountryStructure._,
    'DATA' => DataStructure._,
    'EVEN' => EventStructure._,
    'DATE' => DateStructure._,
    'DEAT' => DeathStructure._,
    'DESI' => DescendantInterestStructure._,
    'DEST' => DestinationStructure._,
    'DIV' => DivorceStructure._,
    'DIVF' => DivorceFilingStructure._,
    'DSCR' => DescriptionStructure._,
    'EDUC' => EducationStructure._,
    'EMAIL' => EmailStructure._,
    'EMIG' => EmigrationStructure._,
    'ENDL' => EndowmentLatterDaySaintStructure._,
    'ENGA' => EngagementStructure._,
    'EXID' => ExternalIdentifierStructure._,
    'TYPE' => TypeStructure._,
    'STAT' => StatusStructure._,
    'FAMS' => FamilySpouseStructure._,
    'CENS' => CensusStructure._,
    'FACT' => FactStructure._,
    'HUSB' => HusbandStructure._,
    'NCHI' => NumberOfChildrenStructure._,
    'RESI' => ResidenceStructure._,
    'WIFE' => WifeStructure._,
    'FAX' => FacsimileStructure._,
    'FCOM' => FirstCommunionStructure._,
    'FILE' => FileReferenceStructure._,
    'TRAN' => TranslationStructure._,
    'FORM' => FormatStructure._,
    'GEDC' => $GedcomStructure._,
    'VERS' => VersionStructure._,
    'GIVN' => GivenNameStructure._,
    'GRAD' => GraduationStructure._,
    'HEAD' => HeaderStructure._,
    'LANG' => LanguageStructure._,
    'PLAC' => PlaceStructure._,
    'SOUR' => SourceStructure._,
    'HEIGHT' => HeightInPixelsStructure._,
    'IDNO' => IdentificationNumberStructure._,
    'IMMI' => ImmigrationStructure._,
    'NAME' => NameStructure._,
    'RELI' => ReligionStructure._,
    'TITL' => TitleStructure._,
    'INIL' => InitiatoryLatterDaySaintStructure._,
    'LATI' => LatitudeStructure._,
    'LEFT' => LeftCropWidthStructure._,
    'LONG' => LongitudeStructure._,
    'MAP' => MapStructure._,
    'MARB' => MarriageBannsStructure._,
    'MARC' => MarriageContractStructure._,
    'MARL' => MarriageLicenseStructure._,
    'MARR' => MarriageStructure._,
    'MARS' => MarriageSettlementStructure._,
    'MEDI' => MediumStructure._,
    'MIME' => MediaTypeStructure._,
    'NATI' => NationalityStructure._,
    'NATU' => NaturalizationStructure._,
    'NICK' => NicknameStructure._,
    'NMR' => NumberOfMarriagesStructure._,
    'NO' => DidNotHappenStructure._,
    'NOTE' => NoteStructure._,
    'NPFX' => NamePrefixStructure._,
    'NSFX' => NameSuffixStructure._,
    'OBJE' => ObjectStructure._,
    'OCCU' => OccupationStructure._,
    'ORDN' => OrdinationStructure._,
    'PAGE' => PageStructure._,
    'PEDI' => PedigreeStructure._,
    'PHON' => PhoneStructure._,
    'PHRASE' => PhraseStructure._,
    'POST' => PostalCodeStructure._,
    'PROB' => ProbateStructure._,
    'PROP' => PropertyStructure._,
    'PUBL' => PublicationStructure._,
    'QUAY' => QualityOfDataStructure._,
    'FAM' => FamilyRecordStructure._,
    'INDI' => IndividualStructure._,
    'REPO' => RepositoryStructure._,
    'SNOTE' => SharedNoteStructure._,
    'SUBM' => SubmitterStructure._,
    'REFN' => ReferenceStructure._,
    'RESN' => RestrictionStructure._,
    'RETI' => RetirementStructure._,
    'ROLE' => RoleStructure._,
    'SCHMA' => ExtensionSchemaStructure._,
    'SDATE' => SortDateStructure._,
    'SEX' => SexStructure._,
    'SLGC' => SealingChildStructure._,
    'SLGS' => SealingSpouseStructure._,
    'SPFX' => SurnamePrefixStructure._,
    'SSN' => SocialSecurityNumberStructure._,
    'STAE' => StateStructure._,
    'SURN' => SurnameStructure._,
    'TAG' => ExtensionTagStructure._,
    'TEMP' => TempleStructure._,
    'TEXT' => TextFromSourceStructure._,
    'TIME' => TimeStructure._,
    'TOP' => TopCropWidthStructure._,
    'TRLR' => TrailerStructure._,
    'UID' => UniqueIdentifierStructure._,
    'WIDTH' => WidthInPixelsStructure._,
    'WILL' => WillStructure._,
    'WWW' => WebAddressStructure._,
    _ => UnknownStructure._,
  }(
    level: level,
    tag: tag,
    xref: xref,
    lineVal: lineVal,
    substructures: substructures?.map(Gedcom7Structure.from),
  );
}

/// Structure with unknown tag
class UnknownStructure extends Gedcom7Structure {
  UnknownStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.ABBR]
class AbbreviationStructure extends Gedcom7Structure {
  AbbreviationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.ADDR]
class AddressStructure extends Gedcom7Structure {
  AddressStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADR1 [Gedcom7Tags.ADR1]
  AddressLine1Structure? get adr1 => getOrNull<AddressLine1Structure>();

  /// https://gedcom.io/terms/v7/ADR2 [Gedcom7Tags.ADR2]
  AddressLine2Structure? get adr2 => getOrNull<AddressLine2Structure>();

  /// https://gedcom.io/terms/v7/ADR3 [Gedcom7Tags.ADR3]
  AddressLine3Structure? get adr3 => getOrNull<AddressLine3Structure>();

  /// https://gedcom.io/terms/v7/CITY [Gedcom7Tags.CITY]
  CityStructure? get city => getOrNull<CityStructure>();

  /// https://gedcom.io/terms/v7/CTRY [Gedcom7Tags.CTRY]
  CountryStructure? get ctry => getOrNull<CountryStructure>();

  /// https://gedcom.io/terms/v7/POST [Gedcom7Tags.POST]
  PostalCodeStructure? get post => getOrNull<PostalCodeStructure>();

  /// https://gedcom.io/terms/v7/STAE [Gedcom7Tags.STAE]
  StateStructure? get stae => getOrNull<StateStructure>();
}

/// See:
///  - [Gedcom7Tags.ADOP]
///  - [Gedcom7Tags.FAMC_ADOP]
class AdoptionStructure extends Gedcom7Structure {
  AdoptionStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/ADOP-FAMC [Gedcom7Tags.ADOP_FAMC]
  FamilyChildStructure? get famc => getOrNull<FamilyChildStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.ADOP_FAMC]
///  - [Gedcom7Tags.FAMC]
///  - [Gedcom7Tags.INDI_FAMC]
class FamilyChildStructure extends Gedcom7Structure {
  FamilyChildStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/FAMC-ADOP [Gedcom7Tags.FAMC_ADOP]
  AdoptionStructure? get adop => getOrNull<AdoptionStructure>();

  /// https://gedcom.io/terms/v7/FAMC-STAT [Gedcom7Tags.FAMC_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PEDI [Gedcom7Tags.PEDI]
  PedigreeStructure? get pedi => getOrNull<PedigreeStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();
}

/// See:
///  - [Gedcom7Tags.ADR1]
class AddressLine1Structure extends Gedcom7Structure {
  AddressLine1Structure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.ADR2]
class AddressLine2Structure extends Gedcom7Structure {
  AddressLine2Structure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.ADR3]
class AddressLine3Structure extends Gedcom7Structure {
  AddressLine3Structure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.AGE]
class AgeAtEventStructure extends Gedcom7Structure {
  AgeAtEventStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.AGNC]
class ResponsibleAgencyStructure extends Gedcom7Structure {
  ResponsibleAgencyStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.ALIA]
class AliasStructure extends Gedcom7Structure {
  AliasStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.ANCI]
class AncestorInterestStructure extends Gedcom7Structure {
  AncestorInterestStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.ANUL]
class AnnulmentStructure extends Gedcom7Structure {
  AnnulmentStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.ASSO]
class AssociatesStructure extends Gedcom7Structure {
  AssociatesStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/ROLE [Gedcom7Tags.ROLE]
  RoleStructure? get role => getOrNull<RoleStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();
}

/// See:
///  - [Gedcom7Tags.AUTH]
class AuthorStructure extends Gedcom7Structure {
  AuthorStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.BAPL]
class BaptismLatterDaySaintStructure extends Gedcom7Structure {
  BaptismLatterDaySaintStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TEMP [Gedcom7Tags.TEMP]
  TempleStructure? get temp => getOrNull<TempleStructure>();

  /// https://gedcom.io/terms/v7/ord-STAT [Gedcom7Tags.ORD_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();
}

/// See:
///  - [Gedcom7Tags.BAPM]
class BaptismStructure extends Gedcom7Structure {
  BaptismStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.BARM]
class BarMitzvahStructure extends Gedcom7Structure {
  BarMitzvahStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.BASM]
class BasMitzvahStructure extends Gedcom7Structure {
  BasMitzvahStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.BIRT]
class BirthStructure extends Gedcom7Structure {
  BirthStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAMC [Gedcom7Tags.FAMC]
  FamilyChildStructure? get famc => getOrNull<FamilyChildStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.BLES]
class BlessingStructure extends Gedcom7Structure {
  BlessingStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.BURI]
class DepositingRemainsStructure extends Gedcom7Structure {
  DepositingRemainsStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CALN]
class CallNumberStructure extends Gedcom7Structure {
  CallNumberStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/MEDI [Gedcom7Tags.MEDI]
  MediumStructure? get medi => getOrNull<MediumStructure>();
}

/// See:
///  - [Gedcom7Tags.CAST]
class CasteStructure extends Gedcom7Structure {
  CasteStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CAUS]
class CauseStructure extends Gedcom7Structure {
  CauseStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.CHAN]
class ChangeStructure extends Gedcom7Structure {
  ChangeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE-exact [Gedcom7Tags.DATE_EXACT]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();
}

/// See:
///  - [Gedcom7Tags.CHIL]
class ChildStructure extends Gedcom7Structure {
  ChildStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.CHR]
class ChristeningStructure extends Gedcom7Structure {
  ChristeningStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAMC [Gedcom7Tags.FAMC]
  FamilyChildStructure? get famc => getOrNull<FamilyChildStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CHRA]
class ChristeningAdultStructure extends Gedcom7Structure {
  ChristeningAdultStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CITY]
class CityStructure extends Gedcom7Structure {
  CityStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.CONF]
class ConfirmationStructure extends Gedcom7Structure {
  ConfirmationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CONL]
class ConfirmationLatterDaySaintStructure extends Gedcom7Structure {
  ConfirmationLatterDaySaintStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TEMP [Gedcom7Tags.TEMP]
  TempleStructure? get temp => getOrNull<TempleStructure>();

  /// https://gedcom.io/terms/v7/ord-STAT [Gedcom7Tags.ORD_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();
}

/// See:
///  - [Gedcom7Tags.CONT]
class ContinuedStructure extends Gedcom7Structure {
  ContinuedStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.COPR]
class CopyrightStructure extends Gedcom7Structure {
  CopyrightStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.CORP]
class CorporateNameStructure extends Gedcom7Structure {
  CorporateNameStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CREA]
class CreationStructure extends Gedcom7Structure {
  CreationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE-exact [Gedcom7Tags.DATE_EXACT]
  DateStructure? get date => getOrNull<DateStructure>();
}

/// See:
///  - [Gedcom7Tags.CREM]
class CremationStructure extends Gedcom7Structure {
  CremationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.CROP]
class CropStructure extends Gedcom7Structure {
  CropStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/HEIGHT [Gedcom7Tags.HEIGHT]
  HeightInPixelsStructure? get height => getOrNull<HeightInPixelsStructure>();

  /// https://gedcom.io/terms/v7/LEFT [Gedcom7Tags.LEFT]
  LeftCropWidthStructure? get left => getOrNull<LeftCropWidthStructure>();

  /// https://gedcom.io/terms/v7/TOP [Gedcom7Tags.TOP]
  TopCropWidthStructure? get top => getOrNull<TopCropWidthStructure>();

  /// https://gedcom.io/terms/v7/WIDTH [Gedcom7Tags.WIDTH]
  WidthInPixelsStructure? get width => getOrNull<WidthInPixelsStructure>();
}

/// See:
///  - [Gedcom7Tags.CTRY]
class CountryStructure extends Gedcom7Structure {
  CountryStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.DATA]
///  - [Gedcom7Tags.HEAD_SOUR_DATA]
///  - [Gedcom7Tags.SOUR_DATA]
class DataStructure extends Gedcom7Structure {
  DataStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/DATA-EVEN [Gedcom7Tags.DATA_EVEN]
  Iterable<EventStructure> get evenList => getAll<EventStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/COPR [Gedcom7Tags.COPR]
  CopyrightStructure? get copr => getOrNull<CopyrightStructure>();

  /// https://gedcom.io/terms/v7/DATE-exact [Gedcom7Tags.DATE_EXACT]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/TEXT [Gedcom7Tags.TEXT]
  Iterable<TextFromSourceStructure> get textList =>
      getAll<TextFromSourceStructure>();
}

/// See:
///  - [Gedcom7Tags.DATA_EVEN]
///  - [Gedcom7Tags.FAM_EVEN]
///  - [Gedcom7Tags.INDI_EVEN]
///  - [Gedcom7Tags.SOUR_EVEN]
class EventStructure extends Gedcom7Structure {
  EventStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATA-EVEN-DATE [Gedcom7Tags.DATA_EVEN_DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/ROLE [Gedcom7Tags.ROLE]
  RoleStructure? get role => getOrNull<RoleStructure>();
}

/// See:
///  - [Gedcom7Tags.DATA_EVEN_DATE]
///  - [Gedcom7Tags.DATE]
///  - [Gedcom7Tags.DATE_EXACT]
///  - [Gedcom7Tags.HEAD_DATE]
///  - [Gedcom7Tags.NO_DATE]
class DateStructure extends Gedcom7Structure {
  DateStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/TIME [Gedcom7Tags.TIME]
  TimeStructure? get time => getOrNull<TimeStructure>();
}

/// See:
///  - [Gedcom7Tags.DEAT]
class DeathStructure extends Gedcom7Structure {
  DeathStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.DESI]
class DescendantInterestStructure extends Gedcom7Structure {
  DescendantInterestStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.DEST]
class DestinationStructure extends Gedcom7Structure {
  DestinationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.DIV]
class DivorceStructure extends Gedcom7Structure {
  DivorceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.DIVF]
class DivorceFilingStructure extends Gedcom7Structure {
  DivorceFilingStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.DSCR]
class DescriptionStructure extends Gedcom7Structure {
  DescriptionStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.EDUC]
class EducationStructure extends Gedcom7Structure {
  EducationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.EMAIL]
class EmailStructure extends Gedcom7Structure {
  EmailStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.EMIG]
class EmigrationStructure extends Gedcom7Structure {
  EmigrationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.ENDL]
class EndowmentLatterDaySaintStructure extends Gedcom7Structure {
  EndowmentLatterDaySaintStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TEMP [Gedcom7Tags.TEMP]
  TempleStructure? get temp => getOrNull<TempleStructure>();

  /// https://gedcom.io/terms/v7/ord-STAT [Gedcom7Tags.ORD_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();
}

/// See:
///  - [Gedcom7Tags.ENGA]
class EngagementStructure extends Gedcom7Structure {
  EngagementStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.EXID]
class ExternalIdentifierStructure extends Gedcom7Structure {
  ExternalIdentifierStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/EXID-TYPE [Gedcom7Tags.EXID_TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();
}

/// See:
///  - [Gedcom7Tags.EXID_TYPE]
///  - [Gedcom7Tags.NAME_TYPE]
///  - [Gedcom7Tags.TYPE]
class TypeStructure extends Gedcom7Structure {
  TypeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.FAMC_STAT]
///  - [Gedcom7Tags.ORD_STAT]
class StatusStructure extends Gedcom7Structure {
  StatusStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/DATE-exact [Gedcom7Tags.DATE_EXACT]
  DateStructure? get date => getOrNull<DateStructure>();
}

/// See:
///  - [Gedcom7Tags.FAMS]
class FamilySpouseStructure extends Gedcom7Structure {
  FamilySpouseStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();
}

/// See:
///  - [Gedcom7Tags.FAM_CENS]
///  - [Gedcom7Tags.INDI_CENS]
class CensusStructure extends Gedcom7Structure {
  CensusStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();
}

/// See:
///  - [Gedcom7Tags.FAM_FACT]
///  - [Gedcom7Tags.INDI_FACT]
class FactStructure extends Gedcom7Structure {
  FactStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();
}

/// See:
///  - [Gedcom7Tags.FAM_HUSB]
///  - [Gedcom7Tags.HUSB]
class HusbandStructure extends Gedcom7Structure {
  HusbandStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();
}

/// See:
///  - [Gedcom7Tags.FAM_NCHI]
///  - [Gedcom7Tags.INDI_NCHI]
class NumberOfChildrenStructure extends Gedcom7Structure {
  NumberOfChildrenStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();
}

/// See:
///  - [Gedcom7Tags.FAM_RESI]
///  - [Gedcom7Tags.INDI_RESI]
class ResidenceStructure extends Gedcom7Structure {
  ResidenceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();
}

/// See:
///  - [Gedcom7Tags.FAM_WIFE]
///  - [Gedcom7Tags.WIFE]
class WifeStructure extends Gedcom7Structure {
  WifeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();
}

/// See:
///  - [Gedcom7Tags.FAX]
class FacsimileStructure extends Gedcom7Structure {
  FacsimileStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.FCOM]
class FirstCommunionStructure extends Gedcom7Structure {
  FirstCommunionStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.FILE]
class FileReferenceStructure extends Gedcom7Structure {
  FileReferenceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/FILE-TRAN [Gedcom7Tags.FILE_TRAN]
  Iterable<TranslationStructure> get tranList => getAll<TranslationStructure>();

  /// https://gedcom.io/terms/v7/FORM [Gedcom7Tags.FORM]
  FormatStructure? get form => getOrNull<FormatStructure>();

  /// https://gedcom.io/terms/v7/TITL [Gedcom7Tags.TITL]
  TitleStructure? get titl => getOrNull<TitleStructure>();
}

/// See:
///  - [Gedcom7Tags.FILE_TRAN]
///  - [Gedcom7Tags.NAME_TRAN]
///  - [Gedcom7Tags.NOTE_TRAN]
///  - [Gedcom7Tags.PLAC_TRAN]
class TranslationStructure extends Gedcom7Structure {
  TranslationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/FORM [Gedcom7Tags.FORM]
  FormatStructure? get form => getOrNull<FormatStructure>();

  /// https://gedcom.io/terms/v7/GIVN [Gedcom7Tags.GIVN]
  Iterable<GivenNameStructure> get givnList => getAll<GivenNameStructure>();

  /// https://gedcom.io/terms/v7/LANG [Gedcom7Tags.LANG]
  LanguageStructure? get lang => getOrNull<LanguageStructure>();

  /// https://gedcom.io/terms/v7/NICK [Gedcom7Tags.NICK]
  Iterable<NicknameStructure> get nickList => getAll<NicknameStructure>();

  /// https://gedcom.io/terms/v7/NPFX [Gedcom7Tags.NPFX]
  Iterable<NamePrefixStructure> get npfxList => getAll<NamePrefixStructure>();

  /// https://gedcom.io/terms/v7/NSFX [Gedcom7Tags.NSFX]
  Iterable<NameSuffixStructure> get nsfxList => getAll<NameSuffixStructure>();

  /// https://gedcom.io/terms/v7/SPFX [Gedcom7Tags.SPFX]
  Iterable<SurnamePrefixStructure> get spfxList =>
      getAll<SurnamePrefixStructure>();

  /// https://gedcom.io/terms/v7/SURN [Gedcom7Tags.SURN]
  Iterable<SurnameStructure> get surnList => getAll<SurnameStructure>();

  /// https://gedcom.io/terms/v7/MIME [Gedcom7Tags.MIME]
  MediaTypeStructure? get mime => getOrNull<MediaTypeStructure>();
}

/// See:
///  - [Gedcom7Tags.FORM]
///  - [Gedcom7Tags.HEAD_PLAC_FORM]
///  - [Gedcom7Tags.PLAC_FORM]
class FormatStructure extends Gedcom7Structure {
  FormatStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/MEDI [Gedcom7Tags.MEDI]
  MediumStructure? get medi => getOrNull<MediumStructure>();
}

/// See:
///  - [Gedcom7Tags.GEDC]
class $GedcomStructure extends Gedcom7Structure {
  $GedcomStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/GEDC-VERS [Gedcom7Tags.GEDC_VERS]
  VersionStructure? get vers => getOrNull<VersionStructure>();
}

/// See:
///  - [Gedcom7Tags.GEDC_VERS]
///  - [Gedcom7Tags.VERS]
class VersionStructure extends Gedcom7Structure {
  VersionStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.GIVN]
class GivenNameStructure extends Gedcom7Structure {
  GivenNameStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.GRAD]
class GraduationStructure extends Gedcom7Structure {
  GraduationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.HEAD]
class HeaderStructure extends Gedcom7Structure {
  HeaderStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/COPR [Gedcom7Tags.COPR]
  CopyrightStructure? get copr => getOrNull<CopyrightStructure>();

  /// https://gedcom.io/terms/v7/DEST [Gedcom7Tags.DEST]
  DestinationStructure? get dest => getOrNull<DestinationStructure>();

  /// https://gedcom.io/terms/v7/GEDC [Gedcom7Tags.GEDC]
  $GedcomStructure? get gedc => getOrNull<$GedcomStructure>();

  /// https://gedcom.io/terms/v7/HEAD-DATE [Gedcom7Tags.HEAD_DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/HEAD-LANG [Gedcom7Tags.HEAD_LANG]
  LanguageStructure? get lang => getOrNull<LanguageStructure>();

  /// https://gedcom.io/terms/v7/HEAD-PLAC [Gedcom7Tags.HEAD_PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/HEAD-SOUR [Gedcom7Tags.HEAD_SOUR]
  SourceStructure? get sour => getOrNull<SourceStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  NoteStructure? get note => getOrNull<NoteStructure>();

  /// https://gedcom.io/terms/v7/SCHMA [Gedcom7Tags.SCHMA]
  ExtensionSchemaStructure? get schma => getOrNull<ExtensionSchemaStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  SharedNoteStructure? get snote => getOrNull<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SUBM [Gedcom7Tags.SUBM]
  SubmitterStructure? get subm => getOrNull<SubmitterStructure>();
}

/// See:
///  - [Gedcom7Tags.HEAD_LANG]
///  - [Gedcom7Tags.LANG]
///  - [Gedcom7Tags.SUBM_LANG]
class LanguageStructure extends Gedcom7Structure {
  LanguageStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.HEAD_PLAC]
///  - [Gedcom7Tags.PLAC]
class PlaceStructure extends Gedcom7Structure {
  PlaceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/HEAD-PLAC-FORM [Gedcom7Tags.HEAD_PLAC_FORM]
  FormatStructure? get form => getOrNull<FormatStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/LANG [Gedcom7Tags.LANG]
  LanguageStructure? get lang => getOrNull<LanguageStructure>();

  /// https://gedcom.io/terms/v7/MAP [Gedcom7Tags.MAP]
  MapStructure? get map => getOrNull<MapStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC-TRAN [Gedcom7Tags.PLAC_TRAN]
  Iterable<TranslationStructure> get tranList => getAll<TranslationStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();
}

/// See:
///  - [Gedcom7Tags.HEAD_SOUR]
///  - [Gedcom7Tags.RECORD_SOUR]
///  - [Gedcom7Tags.SOUR]
class SourceStructure extends Gedcom7Structure {
  SourceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/CORP [Gedcom7Tags.CORP]
  CorporateNameStructure? get corp => getOrNull<CorporateNameStructure>();

  /// https://gedcom.io/terms/v7/HEAD-SOUR-DATA [Gedcom7Tags.HEAD_SOUR_DATA]
  DataStructure? get data => getOrNull<DataStructure>();

  /// https://gedcom.io/terms/v7/NAME [Gedcom7Tags.NAME]
  NameStructure? get name => getOrNull<NameStructure>();

  /// https://gedcom.io/terms/v7/VERS [Gedcom7Tags.VERS]
  VersionStructure? get vers => getOrNull<VersionStructure>();

  /// https://gedcom.io/terms/v7/ABBR [Gedcom7Tags.ABBR]
  AbbreviationStructure? get abbr => getOrNull<AbbreviationStructure>();

  /// https://gedcom.io/terms/v7/AUTH [Gedcom7Tags.AUTH]
  AuthorStructure? get auth => getOrNull<AuthorStructure>();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PUBL [Gedcom7Tags.PUBL]
  PublicationStructure? get publ => getOrNull<PublicationStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/REPO [Gedcom7Tags.REPO]
  Iterable<RepositoryStructure> get repoList => getAll<RepositoryStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/TEXT [Gedcom7Tags.TEXT]
  TextFromSourceStructure? get text => getOrNull<TextFromSourceStructure>();

  /// https://gedcom.io/terms/v7/TITL [Gedcom7Tags.TITL]
  TitleStructure? get titl => getOrNull<TitleStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/PAGE [Gedcom7Tags.PAGE]
  PageStructure? get page => getOrNull<PageStructure>();

  /// https://gedcom.io/terms/v7/QUAY [Gedcom7Tags.QUAY]
  QualityOfDataStructure? get quay => getOrNull<QualityOfDataStructure>();

  /// https://gedcom.io/terms/v7/SOUR-EVEN [Gedcom7Tags.SOUR_EVEN]
  EventStructure? get even => getOrNull<EventStructure>();
}

/// See:
///  - [Gedcom7Tags.HEIGHT]
class HeightInPixelsStructure extends Gedcom7Structure {
  HeightInPixelsStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.IDNO]
class IdentificationNumberStructure extends Gedcom7Structure {
  IdentificationNumberStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.IMMI]
class ImmigrationStructure extends Gedcom7Structure {
  ImmigrationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.INDI_NAME]
///  - [Gedcom7Tags.NAME]
class NameStructure extends Gedcom7Structure {
  NameStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/GIVN [Gedcom7Tags.GIVN]
  Iterable<GivenNameStructure> get givnList => getAll<GivenNameStructure>();

  /// https://gedcom.io/terms/v7/NAME-TRAN [Gedcom7Tags.NAME_TRAN]
  Iterable<TranslationStructure> get tranList => getAll<TranslationStructure>();

  /// https://gedcom.io/terms/v7/NAME-TYPE [Gedcom7Tags.NAME_TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/NICK [Gedcom7Tags.NICK]
  Iterable<NicknameStructure> get nickList => getAll<NicknameStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/NPFX [Gedcom7Tags.NPFX]
  Iterable<NamePrefixStructure> get npfxList => getAll<NamePrefixStructure>();

  /// https://gedcom.io/terms/v7/NSFX [Gedcom7Tags.NSFX]
  Iterable<NameSuffixStructure> get nsfxList => getAll<NameSuffixStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/SPFX [Gedcom7Tags.SPFX]
  Iterable<SurnamePrefixStructure> get spfxList =>
      getAll<SurnamePrefixStructure>();

  /// https://gedcom.io/terms/v7/SURN [Gedcom7Tags.SURN]
  Iterable<SurnameStructure> get surnList => getAll<SurnameStructure>();
}

/// See:
///  - [Gedcom7Tags.INDI_RELI]
///  - [Gedcom7Tags.RELI]
class ReligionStructure extends Gedcom7Structure {
  ReligionStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.INDI_TITL]
///  - [Gedcom7Tags.TITL]
class TitleStructure extends Gedcom7Structure {
  TitleStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.INIL]
class InitiatoryLatterDaySaintStructure extends Gedcom7Structure {
  InitiatoryLatterDaySaintStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TEMP [Gedcom7Tags.TEMP]
  TempleStructure? get temp => getOrNull<TempleStructure>();

  /// https://gedcom.io/terms/v7/ord-STAT [Gedcom7Tags.ORD_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();
}

/// See:
///  - [Gedcom7Tags.LATI]
class LatitudeStructure extends Gedcom7Structure {
  LatitudeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.LEFT]
class LeftCropWidthStructure extends Gedcom7Structure {
  LeftCropWidthStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.LONG]
class LongitudeStructure extends Gedcom7Structure {
  LongitudeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.MAP]
class MapStructure extends Gedcom7Structure {
  MapStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/LATI [Gedcom7Tags.LATI]
  LatitudeStructure? get lati => getOrNull<LatitudeStructure>();

  /// https://gedcom.io/terms/v7/LONG [Gedcom7Tags.LONG]
  LongitudeStructure? get long => getOrNull<LongitudeStructure>();
}

/// See:
///  - [Gedcom7Tags.MARB]
class MarriageBannsStructure extends Gedcom7Structure {
  MarriageBannsStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.MARC]
class MarriageContractStructure extends Gedcom7Structure {
  MarriageContractStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.MARL]
class MarriageLicenseStructure extends Gedcom7Structure {
  MarriageLicenseStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.MARR]
class MarriageStructure extends Gedcom7Structure {
  MarriageStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.MARS]
class MarriageSettlementStructure extends Gedcom7Structure {
  MarriageSettlementStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/HUSB [Gedcom7Tags.HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WIFE [Gedcom7Tags.WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.MEDI]
class MediumStructure extends Gedcom7Structure {
  MediumStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.MIME]
class MediaTypeStructure extends Gedcom7Structure {
  MediaTypeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.NATI]
class NationalityStructure extends Gedcom7Structure {
  NationalityStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.NATU]
class NaturalizationStructure extends Gedcom7Structure {
  NaturalizationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.NICK]
class NicknameStructure extends Gedcom7Structure {
  NicknameStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.NMR]
class NumberOfMarriagesStructure extends Gedcom7Structure {
  NumberOfMarriagesStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.NO]
class DidNotHappenStructure extends Gedcom7Structure {
  DidNotHappenStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/NO-DATE [Gedcom7Tags.NO_DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();
}

/// See:
///  - [Gedcom7Tags.NOTE]
class NoteStructure extends Gedcom7Structure {
  NoteStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/LANG [Gedcom7Tags.LANG]
  LanguageStructure? get lang => getOrNull<LanguageStructure>();

  /// https://gedcom.io/terms/v7/MIME [Gedcom7Tags.MIME]
  MediaTypeStructure? get mime => getOrNull<MediaTypeStructure>();

  /// https://gedcom.io/terms/v7/NOTE-TRAN [Gedcom7Tags.NOTE_TRAN]
  Iterable<TranslationStructure> get tranList => getAll<TranslationStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();
}

/// See:
///  - [Gedcom7Tags.NPFX]
class NamePrefixStructure extends Gedcom7Structure {
  NamePrefixStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.NSFX]
class NameSuffixStructure extends Gedcom7Structure {
  NameSuffixStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.OBJE]
///  - [Gedcom7Tags.RECORD_OBJE]
class ObjectStructure extends Gedcom7Structure {
  ObjectStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/CROP [Gedcom7Tags.CROP]
  CropStructure? get crop => getOrNull<CropStructure>();

  /// https://gedcom.io/terms/v7/TITL [Gedcom7Tags.TITL]
  TitleStructure? get titl => getOrNull<TitleStructure>();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/FILE [Gedcom7Tags.FILE]
  Iterable<FileReferenceStructure> get fileList =>
      getAll<FileReferenceStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();
}

/// See:
///  - [Gedcom7Tags.OCCU]
class OccupationStructure extends Gedcom7Structure {
  OccupationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.ORDN]
class OrdinationStructure extends Gedcom7Structure {
  OrdinationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.PAGE]
class PageStructure extends Gedcom7Structure {
  PageStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.PEDI]
class PedigreeStructure extends Gedcom7Structure {
  PedigreeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.PHON]
class PhoneStructure extends Gedcom7Structure {
  PhoneStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.PHRASE]
class PhraseStructure extends Gedcom7Structure {
  PhraseStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.POST]
class PostalCodeStructure extends Gedcom7Structure {
  PostalCodeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.PROB]
class ProbateStructure extends Gedcom7Structure {
  ProbateStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.PROP]
class PropertyStructure extends Gedcom7Structure {
  PropertyStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.PUBL]
class PublicationStructure extends Gedcom7Structure {
  PublicationStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.QUAY]
class QualityOfDataStructure extends Gedcom7Structure {
  QualityOfDataStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.RECORD_FAM]
class FamilyRecordStructure extends Gedcom7Structure {
  FamilyRecordStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ANUL [Gedcom7Tags.ANUL]
  Iterable<AnnulmentStructure> get anulList => getAll<AnnulmentStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CHIL [Gedcom7Tags.CHIL]
  Iterable<ChildStructure> get chilList => getAll<ChildStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/DIV [Gedcom7Tags.DIV]
  Iterable<DivorceStructure> get divList => getAll<DivorceStructure>();

  /// https://gedcom.io/terms/v7/DIVF [Gedcom7Tags.DIVF]
  Iterable<DivorceFilingStructure> get divfList =>
      getAll<DivorceFilingStructure>();

  /// https://gedcom.io/terms/v7/ENGA [Gedcom7Tags.ENGA]
  Iterable<EngagementStructure> get engaList => getAll<EngagementStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/FAM-CENS [Gedcom7Tags.FAM_CENS]
  Iterable<CensusStructure> get censList => getAll<CensusStructure>();

  /// https://gedcom.io/terms/v7/FAM-EVEN [Gedcom7Tags.FAM_EVEN]
  Iterable<EventStructure> get evenList => getAll<EventStructure>();

  /// https://gedcom.io/terms/v7/FAM-FACT [Gedcom7Tags.FAM_FACT]
  Iterable<FactStructure> get factList => getAll<FactStructure>();

  /// https://gedcom.io/terms/v7/FAM-HUSB [Gedcom7Tags.FAM_HUSB]
  HusbandStructure? get husb => getOrNull<HusbandStructure>();

  /// https://gedcom.io/terms/v7/FAM-NCHI [Gedcom7Tags.FAM_NCHI]
  Iterable<NumberOfChildrenStructure> get nchiList =>
      getAll<NumberOfChildrenStructure>();

  /// https://gedcom.io/terms/v7/FAM-RESI [Gedcom7Tags.FAM_RESI]
  Iterable<ResidenceStructure> get resiList => getAll<ResidenceStructure>();

  /// https://gedcom.io/terms/v7/FAM-WIFE [Gedcom7Tags.FAM_WIFE]
  WifeStructure? get wife => getOrNull<WifeStructure>();

  /// https://gedcom.io/terms/v7/MARB [Gedcom7Tags.MARB]
  Iterable<MarriageBannsStructure> get marbList =>
      getAll<MarriageBannsStructure>();

  /// https://gedcom.io/terms/v7/MARC [Gedcom7Tags.MARC]
  Iterable<MarriageContractStructure> get marcList =>
      getAll<MarriageContractStructure>();

  /// https://gedcom.io/terms/v7/MARL [Gedcom7Tags.MARL]
  Iterable<MarriageLicenseStructure> get marlList =>
      getAll<MarriageLicenseStructure>();

  /// https://gedcom.io/terms/v7/MARR [Gedcom7Tags.MARR]
  Iterable<MarriageStructure> get marrList => getAll<MarriageStructure>();

  /// https://gedcom.io/terms/v7/MARS [Gedcom7Tags.MARS]
  Iterable<MarriageSettlementStructure> get marsList =>
      getAll<MarriageSettlementStructure>();

  /// https://gedcom.io/terms/v7/NO [Gedcom7Tags.NO]
  Iterable<DidNotHappenStructure> get noList => getAll<DidNotHappenStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SLGS [Gedcom7Tags.SLGS]
  Iterable<SealingSpouseStructure> get slgsList =>
      getAll<SealingSpouseStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/SUBM [Gedcom7Tags.SUBM]
  Iterable<SubmitterStructure> get submList => getAll<SubmitterStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();
}

/// See:
///  - [Gedcom7Tags.RECORD_INDI]
class IndividualStructure extends Gedcom7Structure {
  IndividualStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADOP [Gedcom7Tags.ADOP]
  Iterable<AdoptionStructure> get adopList => getAll<AdoptionStructure>();

  /// https://gedcom.io/terms/v7/ALIA [Gedcom7Tags.ALIA]
  Iterable<AliasStructure> get aliaList => getAll<AliasStructure>();

  /// https://gedcom.io/terms/v7/ANCI [Gedcom7Tags.ANCI]
  Iterable<AncestorInterestStructure> get anciList =>
      getAll<AncestorInterestStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/BAPL [Gedcom7Tags.BAPL]
  Iterable<BaptismLatterDaySaintStructure> get baplList =>
      getAll<BaptismLatterDaySaintStructure>();

  /// https://gedcom.io/terms/v7/BAPM [Gedcom7Tags.BAPM]
  Iterable<BaptismStructure> get bapmList => getAll<BaptismStructure>();

  /// https://gedcom.io/terms/v7/BARM [Gedcom7Tags.BARM]
  Iterable<BarMitzvahStructure> get barmList => getAll<BarMitzvahStructure>();

  /// https://gedcom.io/terms/v7/BASM [Gedcom7Tags.BASM]
  Iterable<BasMitzvahStructure> get basmList => getAll<BasMitzvahStructure>();

  /// https://gedcom.io/terms/v7/BIRT [Gedcom7Tags.BIRT]
  Iterable<BirthStructure> get birtList => getAll<BirthStructure>();

  /// https://gedcom.io/terms/v7/BLES [Gedcom7Tags.BLES]
  Iterable<BlessingStructure> get blesList => getAll<BlessingStructure>();

  /// https://gedcom.io/terms/v7/BURI [Gedcom7Tags.BURI]
  Iterable<DepositingRemainsStructure> get buriList =>
      getAll<DepositingRemainsStructure>();

  /// https://gedcom.io/terms/v7/CAST [Gedcom7Tags.CAST]
  Iterable<CasteStructure> get castList => getAll<CasteStructure>();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CHR [Gedcom7Tags.CHR]
  Iterable<ChristeningStructure> get chrList => getAll<ChristeningStructure>();

  /// https://gedcom.io/terms/v7/CHRA [Gedcom7Tags.CHRA]
  Iterable<ChristeningAdultStructure> get chraList =>
      getAll<ChristeningAdultStructure>();

  /// https://gedcom.io/terms/v7/CONF [Gedcom7Tags.CONF]
  Iterable<ConfirmationStructure> get confList =>
      getAll<ConfirmationStructure>();

  /// https://gedcom.io/terms/v7/CONL [Gedcom7Tags.CONL]
  Iterable<ConfirmationLatterDaySaintStructure> get conlList =>
      getAll<ConfirmationLatterDaySaintStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/CREM [Gedcom7Tags.CREM]
  Iterable<CremationStructure> get cremList => getAll<CremationStructure>();

  /// https://gedcom.io/terms/v7/DEAT [Gedcom7Tags.DEAT]
  Iterable<DeathStructure> get deatList => getAll<DeathStructure>();

  /// https://gedcom.io/terms/v7/DESI [Gedcom7Tags.DESI]
  Iterable<DescendantInterestStructure> get desiList =>
      getAll<DescendantInterestStructure>();

  /// https://gedcom.io/terms/v7/DSCR [Gedcom7Tags.DSCR]
  Iterable<DescriptionStructure> get dscrList => getAll<DescriptionStructure>();

  /// https://gedcom.io/terms/v7/EDUC [Gedcom7Tags.EDUC]
  Iterable<EducationStructure> get educList => getAll<EducationStructure>();

  /// https://gedcom.io/terms/v7/EMIG [Gedcom7Tags.EMIG]
  Iterable<EmigrationStructure> get emigList => getAll<EmigrationStructure>();

  /// https://gedcom.io/terms/v7/ENDL [Gedcom7Tags.ENDL]
  Iterable<EndowmentLatterDaySaintStructure> get endlList =>
      getAll<EndowmentLatterDaySaintStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/FAMS [Gedcom7Tags.FAMS]
  Iterable<FamilySpouseStructure> get famsList =>
      getAll<FamilySpouseStructure>();

  /// https://gedcom.io/terms/v7/FCOM [Gedcom7Tags.FCOM]
  Iterable<FirstCommunionStructure> get fcomList =>
      getAll<FirstCommunionStructure>();

  /// https://gedcom.io/terms/v7/GRAD [Gedcom7Tags.GRAD]
  Iterable<GraduationStructure> get gradList => getAll<GraduationStructure>();

  /// https://gedcom.io/terms/v7/IDNO [Gedcom7Tags.IDNO]
  Iterable<IdentificationNumberStructure> get idnoList =>
      getAll<IdentificationNumberStructure>();

  /// https://gedcom.io/terms/v7/IMMI [Gedcom7Tags.IMMI]
  Iterable<ImmigrationStructure> get immiList => getAll<ImmigrationStructure>();

  /// https://gedcom.io/terms/v7/INDI-CENS [Gedcom7Tags.INDI_CENS]
  Iterable<CensusStructure> get censList => getAll<CensusStructure>();

  /// https://gedcom.io/terms/v7/INDI-EVEN [Gedcom7Tags.INDI_EVEN]
  Iterable<EventStructure> get evenList => getAll<EventStructure>();

  /// https://gedcom.io/terms/v7/INDI-FACT [Gedcom7Tags.INDI_FACT]
  Iterable<FactStructure> get factList => getAll<FactStructure>();

  /// https://gedcom.io/terms/v7/INDI-FAMC [Gedcom7Tags.INDI_FAMC]
  Iterable<FamilyChildStructure> get famcList => getAll<FamilyChildStructure>();

  /// https://gedcom.io/terms/v7/INDI-NAME [Gedcom7Tags.INDI_NAME]
  Iterable<NameStructure> get nameList => getAll<NameStructure>();

  /// https://gedcom.io/terms/v7/INDI-NCHI [Gedcom7Tags.INDI_NCHI]
  Iterable<NumberOfChildrenStructure> get nchiList =>
      getAll<NumberOfChildrenStructure>();

  /// https://gedcom.io/terms/v7/INDI-RELI [Gedcom7Tags.INDI_RELI]
  Iterable<ReligionStructure> get reliList => getAll<ReligionStructure>();

  /// https://gedcom.io/terms/v7/INDI-RESI [Gedcom7Tags.INDI_RESI]
  Iterable<ResidenceStructure> get resiList => getAll<ResidenceStructure>();

  /// https://gedcom.io/terms/v7/INDI-TITL [Gedcom7Tags.INDI_TITL]
  Iterable<TitleStructure> get titlList => getAll<TitleStructure>();

  /// https://gedcom.io/terms/v7/INIL [Gedcom7Tags.INIL]
  Iterable<InitiatoryLatterDaySaintStructure> get inilList =>
      getAll<InitiatoryLatterDaySaintStructure>();

  /// https://gedcom.io/terms/v7/NATI [Gedcom7Tags.NATI]
  Iterable<NationalityStructure> get natiList => getAll<NationalityStructure>();

  /// https://gedcom.io/terms/v7/NATU [Gedcom7Tags.NATU]
  Iterable<NaturalizationStructure> get natuList =>
      getAll<NaturalizationStructure>();

  /// https://gedcom.io/terms/v7/NMR [Gedcom7Tags.NMR]
  Iterable<NumberOfMarriagesStructure> get nmrList =>
      getAll<NumberOfMarriagesStructure>();

  /// https://gedcom.io/terms/v7/NO [Gedcom7Tags.NO]
  Iterable<DidNotHappenStructure> get noList => getAll<DidNotHappenStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/OCCU [Gedcom7Tags.OCCU]
  Iterable<OccupationStructure> get occuList => getAll<OccupationStructure>();

  /// https://gedcom.io/terms/v7/ORDN [Gedcom7Tags.ORDN]
  Iterable<OrdinationStructure> get ordnList => getAll<OrdinationStructure>();

  /// https://gedcom.io/terms/v7/PROB [Gedcom7Tags.PROB]
  Iterable<ProbateStructure> get probList => getAll<ProbateStructure>();

  /// https://gedcom.io/terms/v7/PROP [Gedcom7Tags.PROP]
  Iterable<PropertyStructure> get propList => getAll<PropertyStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/RETI [Gedcom7Tags.RETI]
  Iterable<RetirementStructure> get retiList => getAll<RetirementStructure>();

  /// https://gedcom.io/terms/v7/SEX [Gedcom7Tags.SEX]
  SexStructure? get sex => getOrNull<SexStructure>();

  /// https://gedcom.io/terms/v7/SLGC [Gedcom7Tags.SLGC]
  Iterable<SealingChildStructure> get slgcList =>
      getAll<SealingChildStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/SSN [Gedcom7Tags.SSN]
  Iterable<SocialSecurityNumberStructure> get ssnList =>
      getAll<SocialSecurityNumberStructure>();

  /// https://gedcom.io/terms/v7/SUBM [Gedcom7Tags.SUBM]
  Iterable<SubmitterStructure> get submList => getAll<SubmitterStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WILL [Gedcom7Tags.WILL]
  Iterable<WillStructure> get willList => getAll<WillStructure>();
}

/// See:
///  - [Gedcom7Tags.RECORD_REPO]
///  - [Gedcom7Tags.REPO]
class RepositoryStructure extends Gedcom7Structure {
  RepositoryStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NAME [Gedcom7Tags.NAME]
  NameStructure? get name => getOrNull<NameStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();

  /// https://gedcom.io/terms/v7/CALN [Gedcom7Tags.CALN]
  Iterable<CallNumberStructure> get calnList => getAll<CallNumberStructure>();
}

/// See:
///  - [Gedcom7Tags.RECORD_SNOTE]
///  - [Gedcom7Tags.SNOTE]
class SharedNoteStructure extends Gedcom7Structure {
  SharedNoteStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/LANG [Gedcom7Tags.LANG]
  LanguageStructure? get lang => getOrNull<LanguageStructure>();

  /// https://gedcom.io/terms/v7/MIME [Gedcom7Tags.MIME]
  MediaTypeStructure? get mime => getOrNull<MediaTypeStructure>();

  /// https://gedcom.io/terms/v7/NOTE-TRAN [Gedcom7Tags.NOTE_TRAN]
  Iterable<TranslationStructure> get tranList => getAll<TranslationStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();
}

/// See:
///  - [Gedcom7Tags.RECORD_SUBM]
///  - [Gedcom7Tags.SUBM]
class SubmitterStructure extends Gedcom7Structure {
  SubmitterStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/CHAN [Gedcom7Tags.CHAN]
  ChangeStructure? get chan => getOrNull<ChangeStructure>();

  /// https://gedcom.io/terms/v7/CREA [Gedcom7Tags.CREA]
  CreationStructure? get crea => getOrNull<CreationStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/EXID [Gedcom7Tags.EXID]
  Iterable<ExternalIdentifierStructure> get exidList =>
      getAll<ExternalIdentifierStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NAME [Gedcom7Tags.NAME]
  NameStructure? get name => getOrNull<NameStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/REFN [Gedcom7Tags.REFN]
  Iterable<ReferenceStructure> get refnList => getAll<ReferenceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SUBM-LANG [Gedcom7Tags.SUBM_LANG]
  Iterable<LanguageStructure> get langList => getAll<LanguageStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.REFN]
class ReferenceStructure extends Gedcom7Structure {
  ReferenceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();
}

/// See:
///  - [Gedcom7Tags.RESN]
class RestrictionStructure extends Gedcom7Structure {
  RestrictionStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.RETI]
class RetirementStructure extends Gedcom7Structure {
  RetirementStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.ROLE]
class RoleStructure extends Gedcom7Structure {
  RoleStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();
}

/// See:
///  - [Gedcom7Tags.SCHMA]
class ExtensionSchemaStructure extends Gedcom7Structure {
  ExtensionSchemaStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/TAG [Gedcom7Tags.TAG]
  Iterable<ExtensionTagStructure> get $tagList =>
      getAll<ExtensionTagStructure>();
}

/// See:
///  - [Gedcom7Tags.SDATE]
class SortDateStructure extends Gedcom7Structure {
  SortDateStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/PHRASE [Gedcom7Tags.PHRASE]
  PhraseStructure? get phrase => getOrNull<PhraseStructure>();

  /// https://gedcom.io/terms/v7/TIME [Gedcom7Tags.TIME]
  TimeStructure? get time => getOrNull<TimeStructure>();
}

/// See:
///  - [Gedcom7Tags.SEX]
class SexStructure extends Gedcom7Structure {
  SexStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.SLGC]
class SealingChildStructure extends Gedcom7Structure {
  SealingChildStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/FAMC [Gedcom7Tags.FAMC]
  FamilyChildStructure? get famc => getOrNull<FamilyChildStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TEMP [Gedcom7Tags.TEMP]
  TempleStructure? get temp => getOrNull<TempleStructure>();

  /// https://gedcom.io/terms/v7/ord-STAT [Gedcom7Tags.ORD_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();
}

/// See:
///  - [Gedcom7Tags.SLGS]
class SealingSpouseStructure extends Gedcom7Structure {
  SealingSpouseStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TEMP [Gedcom7Tags.TEMP]
  TempleStructure? get temp => getOrNull<TempleStructure>();

  /// https://gedcom.io/terms/v7/ord-STAT [Gedcom7Tags.ORD_STAT]
  StatusStructure? get stat => getOrNull<StatusStructure>();
}

/// See:
///  - [Gedcom7Tags.SPFX]
class SurnamePrefixStructure extends Gedcom7Structure {
  SurnamePrefixStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.SSN]
class SocialSecurityNumberStructure extends Gedcom7Structure {
  SocialSecurityNumberStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.STAE]
class StateStructure extends Gedcom7Structure {
  StateStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.SURN]
class SurnameStructure extends Gedcom7Structure {
  SurnameStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.TAG]
class ExtensionTagStructure extends Gedcom7Structure {
  ExtensionTagStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.TEMP]
class TempleStructure extends Gedcom7Structure {
  TempleStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.TEXT]
class TextFromSourceStructure extends Gedcom7Structure {
  TextFromSourceStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/LANG [Gedcom7Tags.LANG]
  LanguageStructure? get lang => getOrNull<LanguageStructure>();

  /// https://gedcom.io/terms/v7/MIME [Gedcom7Tags.MIME]
  MediaTypeStructure? get mime => getOrNull<MediaTypeStructure>();
}

/// See:
///  - [Gedcom7Tags.TIME]
class TimeStructure extends Gedcom7Structure {
  TimeStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.TOP]
class TopCropWidthStructure extends Gedcom7Structure {
  TopCropWidthStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.TRLR]
class TrailerStructure extends Gedcom7Structure {
  TrailerStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.UID]
class UniqueIdentifierStructure extends Gedcom7Structure {
  UniqueIdentifierStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.WIDTH]
class WidthInPixelsStructure extends Gedcom7Structure {
  WidthInPixelsStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}

/// See:
///  - [Gedcom7Tags.WILL]
class WillStructure extends Gedcom7Structure {
  WillStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();

  /// https://gedcom.io/terms/v7/ADDR [Gedcom7Tags.ADDR]
  AddressStructure? get addr => getOrNull<AddressStructure>();

  /// https://gedcom.io/terms/v7/AGE [Gedcom7Tags.AGE]
  AgeAtEventStructure? get age => getOrNull<AgeAtEventStructure>();

  /// https://gedcom.io/terms/v7/AGNC [Gedcom7Tags.AGNC]
  ResponsibleAgencyStructure? get agnc =>
      getOrNull<ResponsibleAgencyStructure>();

  /// https://gedcom.io/terms/v7/ASSO [Gedcom7Tags.ASSO]
  Iterable<AssociatesStructure> get assoList => getAll<AssociatesStructure>();

  /// https://gedcom.io/terms/v7/CAUS [Gedcom7Tags.CAUS]
  CauseStructure? get caus => getOrNull<CauseStructure>();

  /// https://gedcom.io/terms/v7/DATE [Gedcom7Tags.DATE]
  DateStructure? get date => getOrNull<DateStructure>();

  /// https://gedcom.io/terms/v7/EMAIL [Gedcom7Tags.EMAIL]
  Iterable<EmailStructure> get emailList => getAll<EmailStructure>();

  /// https://gedcom.io/terms/v7/FAX [Gedcom7Tags.FAX]
  Iterable<FacsimileStructure> get faxList => getAll<FacsimileStructure>();

  /// https://gedcom.io/terms/v7/NOTE [Gedcom7Tags.NOTE]
  Iterable<NoteStructure> get noteList => getAll<NoteStructure>();

  /// https://gedcom.io/terms/v7/OBJE [Gedcom7Tags.OBJE]
  Iterable<ObjectStructure> get objeList => getAll<ObjectStructure>();

  /// https://gedcom.io/terms/v7/PHON [Gedcom7Tags.PHON]
  Iterable<PhoneStructure> get phonList => getAll<PhoneStructure>();

  /// https://gedcom.io/terms/v7/PLAC [Gedcom7Tags.PLAC]
  PlaceStructure? get plac => getOrNull<PlaceStructure>();

  /// https://gedcom.io/terms/v7/RELI [Gedcom7Tags.RELI]
  ReligionStructure? get reli => getOrNull<ReligionStructure>();

  /// https://gedcom.io/terms/v7/RESN [Gedcom7Tags.RESN]
  RestrictionStructure? get resn => getOrNull<RestrictionStructure>();

  /// https://gedcom.io/terms/v7/SDATE [Gedcom7Tags.SDATE]
  SortDateStructure? get sdate => getOrNull<SortDateStructure>();

  /// https://gedcom.io/terms/v7/SNOTE [Gedcom7Tags.SNOTE]
  Iterable<SharedNoteStructure> get snoteList => getAll<SharedNoteStructure>();

  /// https://gedcom.io/terms/v7/SOUR [Gedcom7Tags.SOUR]
  Iterable<SourceStructure> get sourList => getAll<SourceStructure>();

  /// https://gedcom.io/terms/v7/TYPE [Gedcom7Tags.TYPE]
  TypeStructure? get type => getOrNull<TypeStructure>();

  /// https://gedcom.io/terms/v7/UID [Gedcom7Tags.UID]
  Iterable<UniqueIdentifierStructure> get uidList =>
      getAll<UniqueIdentifierStructure>();

  /// https://gedcom.io/terms/v7/WWW [Gedcom7Tags.WWW]
  Iterable<WebAddressStructure> get wwwList => getAll<WebAddressStructure>();
}

/// See:
///  - [Gedcom7Tags.WWW]
class WebAddressStructure extends Gedcom7Structure {
  WebAddressStructure._({
    required super.level,
    required super.tag,
    required super.xref,
    required super.lineVal,
    required super.substructures,
  }) : super._();
}
