// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$listpostAtom = Atom(name: '_HomeControllerBase.listpost');

  @override
  List<PostModel> get listpost {
    _$listpostAtom.reportRead();
    return super.listpost;
  }

  @override
  set listpost(List<PostModel> value) {
    _$listpostAtom.reportWrite(value, super.listpost, () {
      super.listpost = value;
    });
  }

  final _$listarCommentsAsyncAction =
      AsyncAction('_HomeControllerBase.listarComments');

  @override
  Future<dynamic> listarComments() {
    return _$listarCommentsAsyncAction.run(() => super.listarComments());
  }

  @override
  String toString() {
    return '''
listpost: ${listpost}
    ''';
  }
}
