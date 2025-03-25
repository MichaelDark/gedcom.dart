import 'package:gedcom_codec/gedcom_codec.dart' show GedcomStructure;
import 'package:gedcom_codec/patterns.dart' show Patterns;

/// Allows to parse payload with a specific data type.
///
// TODO add enum
// TODO add date
// TODO add time
// TODO add age
// TODO add name
// TODO add language
// TODO add media types
// TODO add file path
extension GedcomStructureValueExtension on GedcomStructure {
  /// Payload value (including any nested `CONT` continuations).
  String get _value {
    final buffer = StringBuffer();
    buffer.write(lineVal);
    final continuations = getAllByTag('CONT');
    if (continuations.isNotEmpty) {
      for (final continuation in continuations) {
        buffer.write('\n');
        buffer.write(continuation.lineVal);
      }
    }
    return buffer.toString();
  }

  /// Parsed String value.
  String? get valueText => _value;

  /// Parsed Integer value.
  int? get valueInteger => int.tryParse(_value);

  /// Parsed XREF value.
  String? get valueXref {
    final value = _value;
    return RegExp(Patterns.xref).hasMatch(value) ? value : null;
  }

  /// Parsed List value.
  List<String> get valueList =>
      _value.split(',').map((element) => element.trim()).toList();
}
