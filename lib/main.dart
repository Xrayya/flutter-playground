import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Guruji Login App",
      home: GurujiLoginApp(),
    ),
  );
}

class GurujiLoginApp extends StatelessWidget {
  const GurujiLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xffE70B89),
                    Color(0xffCB0074),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 44,
                  vertical: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 104),
                      child: Image.asset(
                        "images/guruji_login/guruji_img.png",
                        width: 172,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Learn Graphic and UI/UX designing in Hindi for free with live projects.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 56),
                    const EmailPasswordForm(),
                    const RegisterLine(),
                    const SizedBox(height: 20),
                    const ExternalLogin(),
                    const SizedBox(height: 36),
                    const TermsConditionLine(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EmailPasswordForm extends StatefulWidget {
  const EmailPasswordForm({super.key});

  @override
  State<StatefulWidget> createState() => _EmailPasswordFormState();
}

class _EmailPasswordFormState extends State<EmailPasswordForm> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailPasswordFormTextField(
          hintText: "Email Address",
          hintColor: const Color(0xff767676),
          fillColor: Colors.white,
          controller: emailController,
        ),
        const SizedBox(height: 20),
        EmailPasswordFormTextField(
          hintText: "Password",
          hintColor: const Color(0xff767676),
          fillColor: Colors.white,
          controller: passwordController,
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: 50,
          ),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xffFD8C00),
              side: const BorderSide(style: BorderStyle.none),
            ),
            onPressed: handleLogin,
            child: Text(
              "LOGIN",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ExternalLogin extends StatelessWidget {
  const ExternalLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            "images/guruji_login/google_img.png",
            width: 24,
          ),
          style: const ButtonStyle(
            shape: WidgetStatePropertyAll(CircleBorder()),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            "images/guruji_login/facebook_img.png",
            height: 24,
          ),
          onPressed: () {},
          style: const ButtonStyle(
            shape: WidgetStatePropertyAll(CircleBorder()),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
        IconButton(
          icon: Image.asset(
            "images/guruji_login/twitter_img.png",
            width: 24,
          ),
          onPressed: () {},
          style: const ButtonStyle(
            shape: WidgetStatePropertyAll(CircleBorder()),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
      ],
    );
  }
}

class RegisterLine extends StatelessWidget {
  const RegisterLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Register now",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class TermsConditionLine extends StatelessWidget {
  const TermsConditionLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.center,
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
        Text(
          "By signing up, you are agree with our",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Terms & Conditions",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class EmailPasswordFormTextField extends StatelessWidget {
  const EmailPasswordFormTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.hintColor,
    required this.fillColor,
  });

  final String hintText;
  final Color hintColor;
  final Color fillColor;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          color: hintColor,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        filled: true,
        fillColor: fillColor,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(9999)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 0,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(9999)),
          borderSide: BorderSide(
            color: Colors.white,
            width: 0,
          ),
        ),
      ),
      controller: controller,
      style: GoogleFonts.roboto(
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
