import 'package:flutter/material.dart';
import 'package:news_test/utils/konstants.dart';
import 'package:news_test/widgets/c_button.dart';
import 'package:news_test/widgets/c_text_field.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              //title
              TextPair(
                  title: 'Sign In',
                  desc:
                      'Stay informed effortlessly. Sign in and explore a world of news'),
              const SizedBox(
                height: 40,
              ),
              //EmailField
              cTextField(
                  passwordText: emailText,
                  icon: Icons.email_outlined,
                  obscure: false,
                  hint: 'Email'),
              const SizedBox(
                height: 20,
              ),
              //PasswordField
              cTextField(
                passwordText: passwordText,
                hint: 'Password',
                icon: Icons.lock_outline,
                obscure: true,
              ),
              //forgot
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'forgot password',
                        style: TextStyle(color: Konstants().kColor),
                      ))
                ],
              ),
              //signIn Button
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: CButton(text: 'Sign In', onPressed: () {})),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //or
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'or',
                    style: TextStyle(color: Konstants().kColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),

              //google
              GestureDetector(
                onTap: () {
                  print('google');
                },
                child: const ImgButton(
                  image: 'assets/images/google.png',
                  text: 'Sign In with Google',
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //facebook
              GestureDetector(
                onTap: () {
                  print('facebook');
                },
                child: const ImgButton(
                    image: 'assets/images/facebook.png',
                    text: 'Sign In with Facebook'),
              ),
              const Spacer(),

              //signUp
              Row(
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
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImgButton extends StatelessWidget {
  const ImgButton({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.grey),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        image,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text(
                      text,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                ],
              )),
        ),
      ],
    );
  }
}
