import 'package:flutter/material.dart';
import 'package:hello_world/guruji_login.dart';
import 'package:hello_world/todo_app/app.dart';

import 'home.dart';
import 'mahasiswa_form.dart';
import 'one_note_login.dart';
import 'random_image.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Flutter Playground",
      home: Home(
        apps: [
          AppData(
            title: "Mahasiswa Form",
            description: "Form untuk menambahkan data mahasiswa",
            app: MahasiswaFormApp(),
          ),
          AppData(
            title: "Random Image Generator",
            description: "Generate random image from picsum.photos",
            app: RandomImageApp(),
          ),
          AppData(
            title: "One Note Login",
            description: "Login to One Note",
            app: OneNoteLoginApp(),
          ),
          AppData(
            title: "Guruji Login App",
            description: "Login page of Guruji",
            app: GurujiLoginApp(),
          ),
          AppData(
            title: "Simple Todo List",
            description: "Simple Todo List App",
            app: MasterPlanApp(),
          )
        ],
      ),
    ),
  );
}
