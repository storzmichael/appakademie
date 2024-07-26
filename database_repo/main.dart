import 'database_repository.dart';
import 'mock_database.dart';

void main() {
  String todoOne = 'Make coffee';
  String todoTwo = 'Make tea';

  DatabaseRepository myTodoMockDatabase = MockDatabase();

  print(myTodoMockDatabase.getAllTodos());

  myTodoMockDatabase.addTodos(todoOne);
  myTodoMockDatabase.addTodos(todoTwo);

  print(myTodoMockDatabase.getAllTodos());

  myTodoMockDatabase.removeTodos(todoTwo);

  print(myTodoMockDatabase.getAllTodos());
}
