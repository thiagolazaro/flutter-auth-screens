import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_auth/src/pages/auth/controller/auth_controller.dart';
import 'package:getx_auth/src/pages/auth/view/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF493AD5),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Obx(
                () => TextField(
                  controller: authController.emailController,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.email, color: Color(0xFF493AD5)),
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Color(0xFF493AD5)),
                    errorText: authController.isEmailValid.value
                        ? null
                        : "Email é obrigatório",
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(height: 24),
              Obx(
                () => TextField(
                  controller: authController.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.lock, color: Color(0xFF493AD5)),
                    labelText: "Senha",
                    labelStyle: const TextStyle(color: Color(0xFF493AD5)),
                    errorText: authController.isPasswordValid.value
                        ? null
                        : "Senha é obrigatória",
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(height: 24),
              Obx(
                () => TextField(
                  controller: authController.confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.lock, color: Color(0xFF493AD5)),
                    labelText: "Confirmar Senha",
                    labelStyle: const TextStyle(color: Color(0xFF493AD5)),
                    errorText: authController.isConfirmPasswordValid.value
                        ? null
                        : "Confirme a senha",
                    filled: true,
                    isDense: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => authController.register(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF493AD5),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Login", style: TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => Get.to(() => LoginScreen()),
                child: const Text(
                  "Já tem uma conta? Faça login",
                  style: TextStyle(
                    color: Color(0xFF493AD5),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
