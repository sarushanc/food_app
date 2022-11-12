import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  final _userNameController = TextEditingController();
  final _userContactController = TextEditingController();
  final _userDescriptionController = TextEditingController();
  bool _validateName = false;
  bool _validateContact = false;
  bool _validateDescription = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SQLite CRUD"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Add New User',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Name',
                      labelText: 'Name',
                      errorText:
                          _validateName ? 'Name Value Can\'t be Empty' : null),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _userContactController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Contact',
                      labelText: 'Contact',
                      errorText: _validateContact
                          ? 'Contact Value Can\'t be Empty'
                          : null),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _userDescriptionController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: 'Enter Description',
                      labelText: 'Description',
                      errorText: _validateDescription
                          ? 'Description Value Can\'t be Empty'
                          : null),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.teal,
                          textStyle: const TextStyle(fontSize: 15)),
                      onPressed: () {
                        setState(() {
                          _userNameController.text.isEmpty
                              ? _validateName = true
                              : _validateName = false;
                          _userContactController.text.isEmpty
                              ? _validateContact = true
                              : _validateContact = false;
                          _userDescriptionController.text.isEmpty
                              ? _validateDescription = true
                              : _validateDescription = false;
                        });
                      },
                      child: const Text('SAVE'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          textStyle: const TextStyle(fontSize: 15)),
                      onPressed: () {
                        _userNameController.text = '';
                        _userContactController.text = '';
                        _userDescriptionController.text = '';
                      },
                      child: const Text('CLEAR'),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
