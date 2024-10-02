import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneNoteLoginApp extends StatelessWidget {
  static const purpleColor = Color(0xff733781);

  const OneNoteLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("One Drive Login"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Container(
              decoration: const BoxDecoration(color: purpleColor),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(80),
                        bottomRight: Radius.circular(80),
                      ),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 48),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/one_drive_login/one_drive_img.png",
                          width: 90,
                        ),
                        Text(
                          "Microsoft One Note",
                          style: GoogleFonts.montserrat(
                            color: purpleColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Log in to you account to access the app",
                          style: GoogleFonts.montserrat(
                            color: purpleColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Log In",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const OneNoteForm(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OneNoteForm extends StatefulWidget {
  const OneNoteForm({super.key});

  @override
  State<OneNoteForm> createState() => _OneNoteFormState();
}

class _OneNoteFormState extends State<OneNoteForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  handleLogin() {
    final email = emailController.text;
    final password = passwordController.text;

    if (email == "admin" && password == "admin") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login Success"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login Failed"),
        ),
      );
    }
  }

  _OneNoteFormState();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OneNoteFormTextField(
          labelText: "Email Address",
          controller: emailController,
        ),
        const SizedBox(
          height: 20,
        ),
        OneNoteFormTextField(
          labelText: "Password",
          controller: passwordController,
        ),
        const SizedBox(
          height: 32,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: 50,
          ),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(style: BorderStyle.none),
            ),
            onPressed: handleLogin,
            child: Text(
              "LOGIN",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot Password?",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class OneNoteFormTextField extends StatelessWidget {
  const OneNoteFormTextField({
    super.key,
    required this.labelText,
    required this.controller,
  });

  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.roboto(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        filled: true,
        fillColor: const Color(0xff8B4F99),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(9999)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(9999)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
      ),
      controller: controller,
      style: GoogleFonts.roboto(
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
