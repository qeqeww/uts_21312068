import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:projek_get/app/routes/app_pages.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login View'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              controller: controller.cNpm,
              decoration: InputDecoration(
                labelText: "Npm",
              ),
            ),
            TextField(
              controller: controller.cNama,
              decoration: InputDecoration(
                labelText: "Nama",
              ),
            ),
            SizedBox(
              height: 10,
            ),
             TextField(
              controller: controller.cAlamat,
              decoration: InputDecoration(
                labelText: "Alamat",
              ),
            ),
            SizedBox(
              height: 10,
            ),
             TextField(
              controller: controller.cProgram_studi,
              decoration: InputDecoration(
                labelText: "Program_studi",
              ),
            ),
            SizedBox(
              height: 10,
            ),
             TextField(
              controller: controller.cJenis_kelamin,
              decoration: InputDecoration(
                labelText: "Jenis_kelamin",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () =>
                    cAuth.login(controller.cNpm.text, controller.cNama.text),
                child: Text("Simpan")),
          ],
        ),
      ),
    );
  }
}
