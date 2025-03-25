import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import 'gedcom_structure.dart';

/// Generic GEDCOM document.
///
/// The structure itself represents a single _file_
/// where [substructures] represent file lines (structures).
class GedcomDocument<T extends GedcomStructure>
    extends GedcomSubstructureContainer {
  /// Protected list to allow using of the [List] in descendants.
  ///
  /// Consider using [substructures] for traversal outside of [GedcomDocument].
  @protected
  final List<T> substructuresList;

  @override
  Iterable<T> get substructures => substructuresList;

  @override
  int get substructuresLevel => 0;

  /// Default _const_ constructor.
  const GedcomDocument(this.substructuresList);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality.unordered().equals;

    return other is GedcomDocument &&
        listEquals(other.substructuresList, substructuresList);
  }

  @override
  int get hashCode {
    return Object.hashAll(substructures);
  }
}
