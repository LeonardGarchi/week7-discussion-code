/*
  Created by: Claizel Coubeili Cepe
  Date: 27 October 2022
  Description: Sample todo app with networking
*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:week7_networking_discussion/models/todo_model.dart';

import '../api/todo_api.dart';
import 'package:week7_networking_discussion/api/firebase_todo_api.dart';

class TodoListProvider with ChangeNotifier {
  late TodoAPI todoAPI;
  late Future<List<Todo>> _todoList;
  late FirebaseTodoAPI firebaseService;
  late Stream<QuerySnapshot> _todosStream;
  Todo? _selectedTodo;

  Future<List<Todo>> get todo => _todoList;

  Todo get selected => _selectedTodo!;

  changeSelectedTodo(Todo item) {
    _selectedTodo = item;
  }

  TodoListProvider() {
    firebaseService = FirebaseTodoAPI();
    fetchTodos();
  }
  Stream<QuerySnapshot> get todos => _todosStream;

  fetchTodos() {
    _todosStream = firebaseService.getAllTodos();
    notifyListeners();
  }

  // TodoListProvider() {
  //   todoAPI = TodoAPI();
  //   fetchTodos();
  // }

  // TodoListProvider() {
  //   todoAPI = TodoAPI();
  //   fetchTodos();
  //   firebaseService = FirebaseTodoAPI();
  // }

  // void fetchTodos() {
  //   _todoList = todoAPI.fetchTodos();
  //   notifyListeners();
  // }

  void addTodo(Todo item) async {
    String message = await firebaseService.addTodo(item.toJson(item));
    print(message);
    notifyListeners();
  }

  void editTodo(int index, String newTitle) {
    // _todoList[index].title = newTitle;
    notifyListeners();
  }

  void deleteTodo() async {
    print("Selected todo: ${_selectedTodo!.id}");
    String message = await firebaseService.deleteTodo(_selectedTodo!.id);
    print(message);
    notifyListeners();
  }

  void toggleStatus(int index, bool status) {
    // _todoList[index].completed = status;
    // notifyListeners();
  }
}
