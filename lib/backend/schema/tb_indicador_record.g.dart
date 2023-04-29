// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_indicador_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TbIndicadorRecord> _$tbIndicadorRecordSerializer =
    new _$TbIndicadorRecordSerializer();

class _$TbIndicadorRecordSerializer
    implements StructuredSerializer<TbIndicadorRecord> {
  @override
  final Iterable<Type> types = const [TbIndicadorRecord, _$TbIndicadorRecord];
  @override
  final String wireName = 'TbIndicadorRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TbIndicadorRecord object,
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
    value = object.indicadores;
    if (value != null) {
      result
        ..add('Indicadores')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.palco;
    if (value != null) {
      result
        ..add('Palco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('Data')
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
  TbIndicadorRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TbIndicadorRecordBuilder();

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
        case 'Indicadores':
          result.indicadores = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Palco':
          result.palco = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Data':
          result.data = serializers.deserialize(value,
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

class _$TbIndicadorRecord extends TbIndicadorRecord {
  @override
  final String? mes;
  @override
  final String? indicadores;
  @override
  final String? palco;
  @override
  final String? data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TbIndicadorRecord(
          [void Function(TbIndicadorRecordBuilder)? updates]) =>
      (new TbIndicadorRecordBuilder()..update(updates))._build();

  _$TbIndicadorRecord._(
      {this.mes, this.indicadores, this.palco, this.data, this.ffRef})
      : super._();

  @override
  TbIndicadorRecord rebuild(void Function(TbIndicadorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbIndicadorRecordBuilder toBuilder() =>
      new TbIndicadorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbIndicadorRecord &&
        mes == other.mes &&
        indicadores == other.indicadores &&
        palco == other.palco &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mes.hashCode);
    _$hash = $jc(_$hash, indicadores.hashCode);
    _$hash = $jc(_$hash, palco.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbIndicadorRecord')
          ..add('mes', mes)
          ..add('indicadores', indicadores)
          ..add('palco', palco)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TbIndicadorRecordBuilder
    implements Builder<TbIndicadorRecord, TbIndicadorRecordBuilder> {
  _$TbIndicadorRecord? _$v;

  String? _mes;
  String? get mes => _$this._mes;
  set mes(String? mes) => _$this._mes = mes;

  String? _indicadores;
  String? get indicadores => _$this._indicadores;
  set indicadores(String? indicadores) => _$this._indicadores = indicadores;

  String? _palco;
  String? get palco => _$this._palco;
  set palco(String? palco) => _$this._palco = palco;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TbIndicadorRecordBuilder() {
    TbIndicadorRecord._initializeBuilder(this);
  }

  TbIndicadorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mes = $v.mes;
      _indicadores = $v.indicadores;
      _palco = $v.palco;
      _data = $v.data;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbIndicadorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TbIndicadorRecord;
  }

  @override
  void update(void Function(TbIndicadorRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbIndicadorRecord build() => _build();

  _$TbIndicadorRecord _build() {
    final _$result = _$v ??
        new _$TbIndicadorRecord._(
            mes: mes,
            indicadores: indicadores,
            palco: palco,
            data: data,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
