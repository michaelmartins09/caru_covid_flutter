import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:covid_caru/app/model/cases_model.dart';
import 'package:covid_caru/app/shared/repository/cases_covid_repo.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  CasesCovidRepo _repo = CasesCovidRepo(Firestore.instance);

  @observable
  ObservableStream<List<CasesModel>> cases;

  @action
  getCases() => cases = _repo.getCases().asObservable();
}