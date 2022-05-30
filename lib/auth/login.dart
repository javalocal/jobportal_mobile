import 'package:flutter/material.dart';
import 'package:jobportal/welcome/constrain.dart';
import 'package:jobportal/auth/register.dart';
import 'package:form_field_validator/form_field_validator.dart';


class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // SvgPicture.asset(
          //   "assets/icons/Sign_Up_bg.svg",
          //   height: MediaQuery.of(context).size.height,
          //   // Now it takes 100% of our height
          // ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ),
                          ),
                          child: Text(
                            "Sign Up!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2),
                    
                    Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextFieldName(text: "Email"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: "test@email.com"),
            validator: EmailValidator(errorText: "Use a valid email!"),
            onSaved: (email) => _email = email!,
          ),
          const SizedBox(height: defaultPadding),
          TextFieldName(text: "Password"),
          TextFormField(
            // We want to hide our password
            obscureText: true,
            decoration: InputDecoration(hintText: "******"),
            validator: passwordValidator,
            onSaved: (password) => _password = password!,
          ),
          const SizedBox(height: defaultPadding),
        ],
      ),
    ),
                    const SizedBox(height: defaultPadding * 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Sign up form is done
                            // It saved our inputs
                            _formKey.currentState!.save();
                            //  Sign in also done
                          }
                        },
                        child: Text("Sign In"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class SignInForm extends StatelessWidget {
//   SignInForm({
//     Key? key,
//     required this.formKey,
//   }) : super(key: key);

//   final GlobalKey formKey;

//   late String _email, _password;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const TextFieldName(text: "Email"),
//           TextFormField(
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(hintText: "test@email.com"),
//             validator: EmailValidator(errorText: "Use a valid email!"),
//             onSaved: (email) => _email = email!,
//           ),
//           const SizedBox(height: defaultPadding),
//           TextFieldName(text: "Password"),
//           TextFormField(
//             // We want to hide our password
//             obscureText: true,
//             decoration: InputDecoration(hintText: "******"),
//             validator: passwordValidator,
//             onSaved: (password) => _password = password!,
//           ),
//           const SizedBox(height: defaultPadding),
//         ],
//       ),
//     );
//   }
// }