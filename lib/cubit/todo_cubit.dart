import 'package:cubit_todo_app/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty!');
      return;
    }
    final todo = Todo(name: title, createdAt: DateTime.now());

    // state.add(todo);
    emit([...state, todo]);
  }

//Change has occured checker instead of using print
  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
    print('TODOCUBIT: $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print('TODOCUBITERROR: $error');
  }
}
