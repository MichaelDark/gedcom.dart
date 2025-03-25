import 'package:collection/collection.dart';

/// Generic GEDCOM structure.
///
/// The structure itself represents a single line,
/// except for [substructures] that contain nested (level + 1) substructures.
abstract class GedcomStructure with GedcomSubstructureContainer {
  /// Default contructor to explicitly allow immutable descendants.
  const GedcomStructure();

  /// Level.
  ///
  /// Used to encode substructure relationships.
  int get level;

  @override
  int get substructuresLevel => level + 1;

  /// Cross-reference identifier.
  ///
  /// Indicates that this is a structure
  /// to which pointer-type payloads may point.
  String? get xref;

  /// Tag.
  ///
  /// Encodes the structure's type.
  String get tag;

  /// Line Value.
  ///
  /// Encodes the structure’s payload.
  String? get lineVal;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality.unordered().equals;

    return other is GedcomStructure &&
        other.level == level &&
        other.xref == xref &&
        other.tag == tag &&
        other.lineVal == lineVal &&
        listEquals(other.substructures.toList(), substructures.toList());
  }

  @override
  int get hashCode {
    return level.hashCode ^
        xref.hashCode ^
        tag.hashCode ^
        lineVal.hashCode ^
        Object.hashAll(substructures);
  }
}

/// Mixin allowing classes to have [substructures]
/// and corresponding shared utilities for manipulating with them.
abstract mixin class GedcomSubstructureContainer {
  const GedcomSubstructureContainer();

  /// Represents level for all nested [substructures].
  int get substructuresLevel;

  /// Nested substructures.
  Iterable<GedcomStructure> get substructures;

  /// Returns first nested tag with the matching [tag].
  ///
  /// Method only traverses [substructures].
  GedcomStructure getByTag(String tag) => getAllByTag(tag).first;

  /// Returns first nested tag with the matching [tag] or null.
  ///
  /// Method only traverses [substructures].
  GedcomStructure? getByTagOrNull(String tag) => getAllByTag(tag).firstOrNull;

  /// Returns nested tags with the matching [tag].
  ///
  /// Method only traverses [substructures].
  Iterable<GedcomStructure> getAllByTag(String tag) =>
      substructures.where((structure) => structure.tag == tag);
}
