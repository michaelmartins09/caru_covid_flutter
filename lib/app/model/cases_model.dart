import 'package:cloud_firestore/cloud_firestore.dart';

class CasesModel {
  int confirmed;
  int suspect;
  int discarded;
  int deaths;
  int recovered;
  final DocumentReference reference;

  CasesModel({this.confirmed, this.suspect, this.discarded, this.deaths, this.recovered, this.reference});

  factory CasesModel.fromDocument(DocumentSnapshot doc){
    return CasesModel(
      confirmed: doc['confirmed'],
      suspect: doc['suspect'],
      discarded: doc['discarded'],
      deaths: doc['deaths'],
      recovered: doc['recovered'],
      reference: doc.reference
    );
  }
}