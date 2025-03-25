import 'dart:convert';

import 'gedcom_document.dart';
import 'gedcom_structure.dart';
import 'patterns.dart';

/// GEDCOM codec.
///
/// See [GedcomDecoder] and [GedcomEncoder] for implementation details.
class GedcomCodec extends Codec<GedcomDocument, String> {
  /// Default const constructor.
  const GedcomCodec();

  @override
  Converter<String, GedcomDocument> get decoder => const GedcomDecoder();

  @override
  Converter<GedcomDocument, String> get encoder => const GedcomEncoder();
}

/// GEDCOM parser.
///
/// Throws [Exception] if any line does not match [Patterns.line].
class GedcomDecoder extends Converter<String, GedcomDocument> {
  /// Default const constructor.
  const GedcomDecoder();

  @override
  GedcomDocument convert(String input) {
    final lines = input
        .split('\n')
        .map((line) => line.trimLeft())
        .where((line) => line.isNotEmpty)
        .toList();

    List<_ParsedGedcomStructure> structures = [];
    _ParsedGedcomStructure? previousStructure;

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i];
      final match = RegExp(Patterns.line).firstMatch(line);

      if (match == null) {
        throw Exception('Invalid line #${i + 1}: $line');
      }

      final structure = _ParsedGedcomStructure(
        level: int.parse(match.namedGroup('Level')!),
        xref: match.namedGroup('Xref'),
        tag: match.namedGroup('Tag')!,
        lineVal: match.namedGroup('LineVal'),
      );

      if (structure.level == 0) {
        structures.add(structure);
      } else {
        _ParsedGedcomStructure parentStructure = previousStructure!;
        while (parentStructure.level >= structure.level) {
          parentStructure = parentStructure.parent!;
        }
        parentStructure.addSubstructure(structure);
      }

      previousStructure = structure;
    }

    return GedcomDocument(structures.toList());
  }
}

final class _ParsedGedcomStructure extends GedcomStructure {
  final List<_ParsedGedcomStructure> _substructures = [];

  _ParsedGedcomStructure? parent;

  _ParsedGedcomStructure({
    required this.level,
    required this.xref,
    required this.tag,
    required this.lineVal,
  });

  @override
  final int level;

  @override
  final String? xref;

  @override
  final String tag;

  @override
  final String? lineVal;

  @override
  Iterable<GedcomStructure> get substructures => _substructures;

  _ParsedGedcomStructure addSubstructure(_ParsedGedcomStructure structure) {
    structure.parent = this;
    _substructures.add(structure);
    return structure;
  }
}

/// GEDCOM serializer.
class GedcomEncoder extends Converter<GedcomDocument, String> {
  const GedcomEncoder();

  @override
  String convert(
    GedcomDocument input, {
    String indent = '',
    String eol = '\r\n',
  }) {
    final buffer = StringBuffer();

    void writeStructure(GedcomStructure structure) {
      if (indent.isNotEmpty) {
        buffer.write(indent * structure.level);
      }
      buffer.write('${structure.level}');
      if (structure.xref case var xref? when xref.isNotEmpty) {
        buffer.write(' ${structure.xref}');
      }
      buffer.write(' ${structure.tag}');
      if (structure.lineVal case var lineVal?) {
        buffer.write(' $lineVal');
      }
      buffer.write(eol);
      for (final substructure in structure.substructures) {
        writeStructure(substructure);
      }
    }

    for (final structure in input.substructures) {
      writeStructure(structure);
    }

    return buffer.toString();
  }
}
