import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var isEmailValid = true.obs;
  var isPasswordValid = true.obs;
  var isConfirmPasswordValid = true.obs;

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || !email.isEmail) {
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }

    if (password.isEmpty || password.length < 6) {
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }

    if (isEmailValid.value && isPasswordValid.value &&  email == "thiago@gmail.com") {
      emailController.clear();
      passwordController.clear();
      Get.snackbar(
        "Sucesso",
        "Login realizado com sucesso!",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        "Erro",
        "Erro ao realizar login!",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void register() {
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (email.isEmpty || !email.isEmail) {
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }

    if (password.isEmpty || password.length < 6) {
      isPasswordValid.value = false;
    } else {
      isPasswordValid.value = true;
    }

    if (confirmPassword != password) {
      isConfirmPasswordValid.value = false;
    } else {
      isConfirmPasswordValid.value = true;
    }

    if (isEmailValid.value && isPasswordValid.value && isConfirmPasswordValid.value) {
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
      Get.snackbar(
        "Sucesso",
        "Cadastrado com sucesso!",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        "Erro",
        "Erro ao cadastrar!",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
