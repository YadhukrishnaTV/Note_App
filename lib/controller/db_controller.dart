

import 'package:hive/hive.dart';
import 'package:note_app/controller/home_controller.dart';

HomeScreenController homeController = HomeScreenController();

final box = Hive.box('myBox');
Future<void> addData() async {
  final box=Hive.openBox<HomeScreenController>("myBox");
//  await box.addData(value);
//  HomeScreenController.value.addData(value);
  // box.put("notesList", homeController.noteModel);
  print('data list added ');
}

Future<void> getData() async {
  List newList = box.get("notesList");

  print(newList);
}