import 'package:flutter/material.dart';

class MahasiswaFormApp extends StatelessWidget {
  const MahasiswaFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mahasiswa Form by Xrayya"),
      ),
      body: const MahasiswaForm(),
    );
  }
}

class Mahasiswa {
  String nama;
  String nim;
  String jurusan;

  Mahasiswa({required this.nama, required this.nim, required this.jurusan});
}

class MahasiswaForm extends StatefulWidget {
  const MahasiswaForm({super.key});

  @override
  State<MahasiswaForm> createState() => _MahasiswaFormState();
}

class _MahasiswaFormState extends State<MahasiswaForm> {
  final namaController = TextEditingController();
  final nimController = TextEditingController();
  final jurusanController = TextEditingController();
  List<Mahasiswa> mahasiswas = [
    Mahasiswa(nama: "Bambang", nim: "212121", jurusan: "Teknik Informatika"),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Card(
            child: ListView.builder(
              itemCount: mahasiswas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(mahasiswas[index].nama),
                  subtitle: Text(mahasiswas[index].nim),
                  trailing: Text(mahasiswas[index].jurusan),
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: "Nama Mahasiswa",
                      border: OutlineInputBorder(),
                    ),
                    controller: namaController,
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: "NIM",
                      border: OutlineInputBorder(),
                    ),
                    controller: nimController,
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: "Jurusan",
                      border: OutlineInputBorder(),
                    ),
                    controller: jurusanController,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          mahasiswas.add(
                            Mahasiswa(
                              nama: namaController.text,
                              nim: nimController.text,
                              jurusan: jurusanController.text,
                            ),
                          );
                          namaController.clear();
                          nimController.clear();
                          jurusanController.clear();
                        },
                      );
                    },
                    child: const Text("Tambah"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
