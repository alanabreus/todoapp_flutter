class TodoModel {
  int id;
  String title;
  String description;
  String todoDate;
  int categoryId;
  int isFinished;


  TodoModel({this.id, this.title, this.description, this.todoDate, this.categoryId, this.isFinished});

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
        id:  map['id'],
        title: map['title'],
        description: map['description'],
        todoDate: map['todoDate'],
        categoryId: map['categoryId'],
        isFinished: map['isFinished']
        //field: json[''],
        );
  }

  Map<String, dynamic> toMap() => {
    'title': title,
    'description': description,
    'todoDate': todoDate,
    'categoryId': categoryId,
    'isFinished': isFinished 
  };
}
