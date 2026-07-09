import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'firebase_simple_auth/login_screen.dart';
import 'guruji_login.dart';
import 'home.dart';
import 'mahasiswa_form.dart';
import 'one_note_login.dart';
import 'random_image.dart';
import 'todo_app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
          ),
          AppData(
              title: "Simple Firebase Auth",
              description: "Simple Auth using firebase",
              app: LoginScreen())
        ],
      ),
    ),
  );
}
