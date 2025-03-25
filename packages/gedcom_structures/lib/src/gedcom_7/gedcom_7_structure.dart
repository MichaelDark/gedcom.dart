import 'package:gedcom_codec/gedcom_codec.dart';

import '../generic_gedcom_substructure_container.dart';

part 'gedcom_7_structures.generated.dart';

/// GEDCOM 7 Structure.
sealed class Gedcom7Structure extends GedcomStructure
    with GenericGedcomSubstructureContainer {
  /// Parses GEDCOM 7 Structure.
  factory Gedcom7Structure.parse({
    required int level,
    required String tag,
    required String? xref,
    required String? lineVal,
    required Iterable<GedcomStructure>? substructures,
  }) {
    return _parseStructure(
      level: level,
      tag: tag,
      xref: xref,
      lineVal: lineVal,
      substructures: substructures,
    );
  }

  /// Parses GEDCOM 7 Structure from any [GedcomStructure].
  factory Gedcom7Structure.from(GedcomStructure structure) {
    return Gedcom7Structure.parse(
      level: structure.level,
      tag: structure.tag,
      xref: structure.xref,
      lineVal: structure.lineVal,
      substructures: structure.substructures,
    );
  }

  final int _level;
  final String? _xref;
  final String _tag;
  final String? _lineVal;
  final List<Gedcom7Structure> _substructures;

  Gedcom7Structure._({
    required int level,
    required String tag,
    String? xref,
    String? lineVal,
    Iterable<Gedcom7Structure>? substructures,
  })  : _level = level,
        _xref = xref,
        _tag = tag,
        _lineVal = lineVal,
        _substructures = substructures?.toList() ?? <Gedcom7Structure>[];

  @override
  int get level => _level;

  @override
  String? get xref => _xref;

  @override
  String get tag => _tag;

  @override
  String? get lineVal => _lineVal;

  @override
  List<Gedcom7Structure> get substructures => _substructures;

  @override
  int get substructuresLevel => level + 1;

  @override
  Gedcom7Structure addSubstructure({
    required String tag,
    String? xref,
    String? lineVal,
  }) {
    final newStructure = Gedcom7Structure.parse(
      level: substructuresLevel,
      tag: tag,
      xref: xref,
      lineVal: lineVal,
      substructures: null,
    );
    substructures.add(newStructure);
    return newStructure;
  }
}
