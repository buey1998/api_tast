class Todo {
  final int id;
  final String title;
  final int isDone;
  Todo({this.id, this.title, this.isDone});

  Map<String, dynamic> tomap() {
    return {'id': id, 'title': title, 'isDone': isDone};
  }
}
