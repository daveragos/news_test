import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/c_text_field.dart';
import 'package:news_test/widgets/img_button.dart';
import 'package:news_test/widgets/text_pair.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      // Title
                      TextPair(
                        title: 'Sign In',
                        desc:
                            'Stay informed effortlessly. Sign in and explore a world of news',
                      ),
                      const SizedBox(height: 40),
                      // EmailField
                      cTextField(
                        passwordText: emailText,
                        icon: Icons.email_outlined,
                        obscure: false,
                        hint: 'Email',
                      ),
                      const SizedBox(height: 20),
                      // PasswordField
                      cTextField(
                        passwordText: passwordText,
                        hint: 'Password',
                        icon: Icons.lock_outline,
                        obscure: true,
                      ),
                      // Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password',
                              style: TextStyle(color: Konstants().kColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Sign In Button
                      Row(
                        children: [
                          Expanded(
                            child: CButton(
                              text: 'Sign In',
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      // OR Divider
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(color: Colors.grey),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'or',
                            style: TextStyle(color: Konstants().kColor),
                          ),
                          const SizedBox(width: 5),
                          const Expanded(
                            child: Divider(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      // Google Sign In Button
                      GestureDetector(
                        onTap: () {
                          print('Google');
                        },
                        child: const ImgButton(
                          image: 'assets/images/google.png',
                          text: 'Sign In with Google',
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Facebook Sign In Button
                      GestureDetector(
                        onTap: () {
                          print('Facebook');
                        },
                        child: const ImgButton(
                          image: 'assets/images/facebook.png',
                          text: 'Sign In with Facebook',
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            // Sign Up
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Konstants().kColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
