import 'package:flutter/material.dart';
import 'package:ziploft/constraints.dart';
import 'package:ziploft/widgets/bobble.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
        child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Image(
              image: const AssetImage('assets/Logos/Ziploft-Color.png'),
              width: _screenWidth / 2,
            ),
            const SizedBox(
              height: 50,
            ),
            const InputField(
              labelName: 'EMAIL ADDRESS',
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: const [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Forgot password? ',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                InputField(
                  labelName: 'PASSWORD',
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Bobble(
              isGradient: true,
              topGradientColor: Color(0xff00FFF8),
              bottomGradientColor: Color(0xff4587E1),
              width: 150,
              height: 50,
              isShadow: true,
              boxContent: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/map');
                },
                child: Text(
                  'Sign in',
                  style: kSignInButtonTextStyle,
                ),
              ),
            ),
            const Expanded(flex: 3, child: SizedBox()),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don\'t have account?',
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.labelName,
  }) : super(key: key);

  final String labelName;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        labelText: labelName,
        labelStyle: kSignInTextFieldLabelStyle,
      ),
    );
  }
}
