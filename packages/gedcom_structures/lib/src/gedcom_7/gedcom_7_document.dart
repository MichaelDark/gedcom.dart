import 'package:gedcom_codec/gedcom_codec.dart';

import '../generic_gedcom_substructure_container.dart';
import 'gedcom_7_structure.dart';

/// GEDCOM 7 Document.
class Gedcom7Document extends GedcomDocument<Gedcom7Structure>
    with GenericGedcomSubstructureContainer<Gedcom7Structure> {
  @override
  List<Gedcom7Structure> get substructures => substructuresList;

  const Gedcom7Document(super.substructuresList);

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

extension Gedcom7DocumentExtension on GedcomDocument {
  /// Converts any GEDCOM Document to GEDCOM 7 Document.
  Gedcom7Document toGedcom7Document() {
    return Gedcom7Document(substructures.map(Gedcom7Structure.from).toList());
  }
}
