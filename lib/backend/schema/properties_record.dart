import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "airbnbFeeds" field.
  List<String>? _airbnbFeeds;
  List<String> get airbnbFeeds => _airbnbFeeds ?? const [];
  bool hasAirbnbFeeds() => _airbnbFeeds != null;

  // "bookingFeeds" field.
  List<String>? _bookingFeeds;
  List<String> get bookingFeeds => _bookingFeeds ?? const [];
  bool hasBookingFeeds() => _bookingFeeds != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _airbnbFeeds = getDataList(snapshotData['airbnbFeeds']);
    _bookingFeeds = getDataList(snapshotData['bookingFeeds']);
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? name,
  String? city,
  String? country,
  bool? isActive,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'city': city,
      'country': country,
      'isActive': isActive,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.airbnbFeeds, e2?.airbnbFeeds) &&
        listEquality.equals(e1?.bookingFeeds, e2?.bookingFeeds) &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.isActive == e2?.isActive &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.airbnbFeeds,
        e?.bookingFeeds,
        e?.city,
        e?.country,
        e?.isActive,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
