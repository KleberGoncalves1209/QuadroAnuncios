import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tb_mes_record.g.dart';

abstract class TbMesRecord implements Built<TbMesRecord, TbMesRecordBuilder> {
  static Serializer<TbMesRecord> get serializer => _$tbMesRecordSerializer;

  @BuiltValueField(wireName: 'Mes')
  String? get mes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TbMesRecordBuilder builder) =>
      builder..mes = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tbMes');

  static Stream<TbMesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TbMesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TbMesRecord._();
  factory TbMesRecord([void Function(TbMesRecordBuilder) updates]) =
      _$TbMesRecord;

  static TbMesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTbMesRecordData({
  String? mes,
}) {
  final firestoreData = serializers.toFirestore(
    TbMesRecord.serializer,
    TbMesRecord(
      (t) => t..mes = mes,
    ),
  );

  return firestoreData;
}
