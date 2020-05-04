import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/repository/db_connection_repository.dart';

class TodoService extends Disposable {
  //dispose will be called automatically

  DbConnectionRepository _repo = DbConnectionRepository();

  final _table = "todos";

  TodoService(){
    _repo = DbConnectionRepository();

  }

  getAllTodos() async {
    return await _repo.getAllData(_table);
  }

  saveTodo(todo) async {
    return await _repo.save(_table, todo.toMap());
  }

  @override
  void dispose() {}
}
