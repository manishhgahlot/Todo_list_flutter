import 'package:flutter/material.dart';
import 'package:to_do_list/screens/add_page.dart';
import 'package:http/http.dart' as http;

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => TodoListPageState();
}

class TodoListPageState extends State<TodoListPage> {
  @override
  void initState() {
    super.initState();
    fetchTodo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO_LIST"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: naviagteToAddPage,
        label: Text("Add"),
      ),
    );
  }

  void naviagteToAddPage() {
    final route = MaterialPageRoute(builder: (context) => const AddTodoPage());
    Navigator.push(context, route);
  }
}

Future<void> fetchTodo() async {
  const url = 'https://api.nstack.in/v1/todos?page=1&limit=1';
  final uri = Uri.parse(url);

  try {
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      print('Todos fetched successfully');
      print(response.body);
    } else {
      print('Failed to fetch todos. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('An error occurred: $error');
  }
}


array=[asdads.body];
for(i=0;i<=array.lenght;i++){
  if(array[i]['emailid']==email){
     final jsonData = json.decode(response.body);
     final name = jsonData['name'];
    final roll = jsonData['roll'];
    final email = jsonData['email'];
    final number = jsonData['number'];
    final company = jsonData['company']
  }
  else
}
print('number is:${number}');
listtile number