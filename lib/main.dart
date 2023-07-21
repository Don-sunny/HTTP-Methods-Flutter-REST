import 'package:flutter/material.dart';
import 'package:htt_methods/app_bar_button.dart';
import 'package:htt_methods/base_clint.dart';
import 'package:htt_methods/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                AppButton(
                  operations: 'Get',
                  opeationsColor: Colors.green,
                  description: 'Fetch User',
                  onPressed: () async {
                    var response =
                        await BaseClient().get('/users').catchError((err) {});
                    if (response == null) return;
                    debugPrint('successful');
                    //   var user = await userFromJson(response);
                    //   debugPrint('user count: ');
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  onPressed: () async {
                    var user = User(name: 'Don sunny', qualifications: [
                      Qualification(
                          degree: 'Master', completionData: '01-01-2022')
                    ]);
                    var response = await BaseClient()
                        .post('/users', user)
                        .catchError((err) {});
                    if (response == null) return;
                    debugPrint('successful');
                  },
                  operations: 'Post',
                  opeationsColor: Colors.orange,
                  description: 'Add User',
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  onPressed: () async {
                    var id = 2;
                    var user = User(name: 'Don sunny', qualifications: [
                      Qualification(
                          degree: 'Ph.D', completionData: '01-01-2025')
                    ]);
                    var response = await BaseClient()
                        .put('/users/$id', user)
                        .catchError((err) {});
                    if (response == null) return;
                    debugPrint('successful');
                  },
                  operations: 'Put',
                  opeationsColor: Colors.blue,
                  description: 'Update User',
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  onPressed: () async {
                    var id = 2;
                    var response = await BaseClient()
                        .delete('/users/$id')
                        .catchError((err) {});
                    if (response == null) return;
                    debugPrint('successful');
                  },
                  operations: 'Delete',
                  opeationsColor: Colors.red,
                  description: 'Delete User',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
