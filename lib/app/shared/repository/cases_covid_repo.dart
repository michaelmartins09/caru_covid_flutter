import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_caru/app/model/cases_model.dart';

class CasesCovidRepo {
  final Firestore firestore;

  CasesCovidRepo(this.firestore);

  Stream<List<CasesModel>> getCases() {
    return firestore.collection("cases").orderBy('created_at').snapshots().map((doc){
      return doc.documents.map((item){
        return CasesModel.fromDocument(item);
      }).toList();
    });
  }
}
