import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add mahasiswa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: controller.cNpm,
              autocorrect: false,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Npm"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.cNama,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Nama"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.cAlamat,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Alamat"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.cProgram_studi,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Program_studi"),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.cJenis_kelamin,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(labelText: "Jenis_kelamin"),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () => controller.addproduct(
                      controller.cNpm.text,
                      controller.cNama.text,
                    ),
                child: Text("Simpan"))
          ],
        ),
      ),
    );
  }
}
