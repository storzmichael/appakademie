import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<String> todoDatabase = [];

  @override
  void addTodos(String todo) {
    todoDatabase.add(todo);
  }

  @override
  List<String> getAllTodos() {
    return todoDatabase;
  }

  @override
  void removeTodos(String todo) {
    todoDatabase.remove(todo);
  }
}
