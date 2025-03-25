import 'package:gedcom_codec/gedcom_codec.dart';

/// Same as [GedcomSubstructureContainer],
/// but with a [T] type parameter
/// and additional methods:
/// - [get]
/// - [getOrNull]
/// - [getAll]
/// - [addSubstructure]
/// - [removeSubstructure]
mixin GenericGedcomSubstructureContainer<T extends GedcomStructure>
    on GedcomSubstructureContainer {
  @override
  List<T> get substructures;

  @override
  T getByTag(String tag) => getAllByTag(tag).first;

  @override
  T? getByTagOrNull(String tag) => getAllByTag(tag).firstOrNull;

  @override
  Iterable<T> getAllByTag(String tag) {
    return substructures.where((structure) => structure.tag == tag);
  }

  /// Same as [getByTag], but accepts type [R].
  R get<R extends T>() => getAll<R>().first;

  /// Same as [getByTagOrNull], but accepts type [R].
  R? getOrNull<R extends T>() => getAll<R>().firstOrNull;

  /// Same as [getAllByTag], but accepts type [R].
  Iterable<R> getAll<R extends T>() => substructures.whereType<R>();

  /// Creates a structure, adds it to [substructures]
  /// and returns created substructure.
  T addSubstructure({required String tag, String? xref, String? lineVal});

  void removeSubstructure(T structure) {
    substructures.remove(structure);
  }
}
