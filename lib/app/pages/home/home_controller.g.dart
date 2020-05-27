// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$casesAtom = Atom(name: '_HomeControllerBase.cases');

  @override
  ObservableStream<List<CasesModel>> get cases {
    _$casesAtom.reportRead();
    return super.cases;
  }

  @override
  set cases(ObservableStream<List<CasesModel>> value) {
    _$casesAtom.reportWrite(value, super.cases, () {
      super.cases = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic getCases() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getCases');
    try {
      return super.getCases();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cases: ${cases}
    ''';
  }
}
