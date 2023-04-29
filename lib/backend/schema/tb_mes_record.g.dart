// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_mes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TbMesRecord> _$tbMesRecordSerializer = new _$TbMesRecordSerializer();

class _$TbMesRecordSerializer implements StructuredSerializer<TbMesRecord> {
  @override
  final Iterable<Type> types = const [TbMesRecord, _$TbMesRecord];
  @override
  final String wireName = 'TbMesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TbMesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mes;
    if (value != null) {
      result
        ..add('Mes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TbMesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TbMesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Mes':
          result.mes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TbMesRecord extends TbMesRecord {
  @override
  final String? mes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TbMesRecord([void Function(TbMesRecordBuilder)? updates]) =>
      (new TbMesRecordBuilder()..update(updates))._build();

  _$TbMesRecord._({this.mes, this.ffRef}) : super._();

  @override
  TbMesRecord rebuild(void Function(TbMesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbMesRecordBuilder toBuilder() => new TbMesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbMesRecord && mes == other.mes && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mes.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbMesRecord')
          ..add('mes', mes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TbMesRecordBuilder implements Builder<TbMesRecord, TbMesRecordBuilder> {
  _$TbMesRecord? _$v;

  String? _mes;
  String? get mes => _$this._mes;
  set mes(String? mes) => _$this._mes = mes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TbMesRecordBuilder() {
    TbMesRecord._initializeBuilder(this);
  }

  TbMesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mes = $v.mes;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbMesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TbMesRecord;
  }

  @override
  void update(void Function(TbMesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbMesRecord build() => _build();

  _$TbMesRecord _build() {
    final _$result = _$v ?? new _$TbMesRecord._(mes: mes, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
