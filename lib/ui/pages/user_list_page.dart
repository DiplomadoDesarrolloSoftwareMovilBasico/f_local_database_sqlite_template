import 'package:f_local_database_sqlite_template/domain/home_controller.dart';
import 'package:f_local_database_sqlite_template/domain/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/list_item.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User list"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _getXlistView(),
      ),
    );
  }

  Widget _getXlistView() {
    return ListView.builder(
      itemCount: 0,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListItem(user);
      },
    );
  }
}
