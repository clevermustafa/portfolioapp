import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _aboutYourselfController = TextEditingController();
  final TextEditingController _skillsController = TextEditingController();

  final ImagePicker picker = ImagePicker();
  XFile? file;
  getImageFromGallery() async{
    file=  await picker.pickImage(source: ImageSource.gallery);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fill up your details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                getImageFromGallery();
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                ),
                child: file == null ? SizedBox() : Image.file(File(file!.path))
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter your name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter your email",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "About yourself",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _aboutYourselfController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Skills",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _skillsController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50))
              ),
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
