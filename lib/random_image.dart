import 'package:flutter/material.dart';

class RandomImageApp extends StatelessWidget {
  const RandomImageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Image Generator"),
      ),
      body: const RandomImage(),
    );
  }
}

class RandomImage extends StatefulWidget {
  const RandomImage({super.key});

  @override
  State<RandomImage> createState() => _RandomImageState();
}

class _RandomImageState extends State<RandomImage> {
  String? imageId, imageWidth, imageHeight;

  final imageIdController = TextEditingController();
  final imageWidthController = TextEditingController();
  final imageHeightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://picsum.photos/id/${imageId ?? 1}/${imageWidth ?? 200}/${imageHeight ?? 200}",
          errorBuilder: (context, error, stackTrace) {
            return Card(
              child: Column(
                children: [
                  const Text("Image not found"),
                  Text("Error: $error"),
                  Text("Stack trace: $stackTrace"),
                ],
              ),
            );
          },
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Image Id",
                    border: OutlineInputBorder(),
                  ),
                  controller: imageIdController,
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Image Width",
                    border: OutlineInputBorder(),
                  ),
                  controller: imageWidthController,
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Image Height",
                    border: OutlineInputBorder(),
                  ),
                  controller: imageHeightController,
                ),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        imageId = imageIdController.text;
                        imageWidth = imageWidthController.text;
                        imageHeight = imageHeightController.text;
                      },
                    );
                  },
                  child: const Text("Render"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
