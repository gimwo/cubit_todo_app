class Todo {
  Todo({required this.name, required this.createdAt});
  final String name;
  final DateTime createdAt;

  @override
  String toString() => 'Todo(name:$name, createdAt: $createdAt)';
}
