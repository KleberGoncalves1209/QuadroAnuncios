import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tb_indicador_record.g.dart';

abstract class TbIndicadorRecord
    implements Built<TbIndicadorRecord, TbIndicadorRecordBuilder> {
  static Serializer<TbIndicadorRecord> get serializer =>
      _$tbIndicadorRecordSerializer;

  @BuiltValueField(wireName: 'Mes')
  String? get mes;

  @BuiltValueField(wireName: 'Indicadores')
  String? get indicadores;

  @BuiltValueField(wireName: 'Palco')
  String? get palco;

  @BuiltValueField(wireName: 'Data')
  String? get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TbIndicadorRecordBuilder builder) => builder
    ..mes = ''
    ..indicadores = ''
    ..palco = ''
    ..data = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tbIndicador');

  static Stream<TbIndicadorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TbIndicadorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TbIndicadorRecord._();
  factory TbIndicadorRecord([void Function(TbIndicadorRecordBuilder) updates]) =
      _$TbIndicadorRecord;

  static TbIndicadorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTbIndicadorRecordData({
  String? mes,
  String? indicadores,
  String? palco,
  String? data,
}) {
  final firestoreData = serializers.toFirestore(
    TbIndicadorRecord.serializer,
    TbIndicadorRecord(
      (t) => t
        ..mes = mes
        ..indicadores = indicadores
        ..palco = palco
        ..data = data,
    ),
  );

  return firestoreData;
}
