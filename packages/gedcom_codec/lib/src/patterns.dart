/// Regular Expression patterns for GEDCOM parser.
///
/// Currently only [xref] and [line] are part of the public API.
class Patterns {
  /// Cross-reference identifier (XREF) pattern.
  static const xref = '(?:@[A-Z0-9_]+@)';

  /// Contains required `Level` and `Tag` named groups
  /// and optional `Xref` and `LineVal` named groups.
  static const line =
      '^(?<Level>$_level) (?:(?<Xref>$xref) )?(?<Tag>$_tag)( (?<LineVal>$_lineVal))?\$';

  static const _level = '(?:0|[1-9]+[0-9]*)';
  static const _tag = '(?:$_stdTag|$_extTag)';
  static const _stdTag = '(?:[A-Z][A-Z0-9_]*)';
  static const _extTag = '(?:_[A-Z0-9_]*)';
  static const _lineVal = '(?:$_voidPtr|$xref|$_lineStr)';
  static const _voidPtr = '(?:@VOID@)';
  static const _lineStr = '(?:(?:)|(?:(?:$_nonAt|@@)$_nonEol*))';
  static const _nonAt = r'(?:\x09|[^\x00-\x1F\x0D\x0A\x40])';
  static const _nonEol = r'(?:\x09|[^\x00-\x1F\x0D\x0A])';
}
