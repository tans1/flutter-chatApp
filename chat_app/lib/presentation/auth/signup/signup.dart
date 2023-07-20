// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<RegisterBloc, RegisterState>(
//       builder: (context, state) {
//         return Container(
//           color: Colors.white,
//           child: SafeArea(
//               child: Scaffold(
//             backgroundColor: Colors.white,
//             appBar: authAppbar("Sign Up"),
//             body: SingleChildScrollView(
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Center(
//                         child:
//                             textWidget("Or use your email account to login")),
//                     Container(
//                       margin: EdgeInsets.only(top: 60.h),
//                       padding: EdgeInsets.only(left: 25.w, right: 25.w),
//                       child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             textWidget("username"),
//                             inputField(
//                                 'enter your username', 'username', "user",
//                                 (value) {
//                               context
//                                   .read<RegisterBloc>()
//                                   .add(UserNameEvent(value));
//                             }),
//                             textWidget("email"),
//                             inputField('enter your email', 'email', "user",
//                                 (value) {
//                               context
//                                   .read<RegisterBloc>()
//                                   .add(EmailEvent(value));
//                             }),
//                             textWidget("password"),
//                             inputField(
//                                 'enter your password', 'password', "lock",
//                                 (value) {
//                               context
//                                   .read<RegisterBloc>()
//                                   .add(PasswordEvent(value));
//                             }),
//                             textWidget("confirm password"),
//                             inputField(
//                                 'confirm your password', 'password', "lock",
//                                 (value) {
//                               context
//                                   .read<RegisterBloc>()
//                                   .add(RePasswordEvent(value));
//                             }),
//                             Center(
//                                 child: textWidget(
//                                     "By creating an account you have to agree with our terms and conditions.")),
//                             footerButton('Sign Up', () {
//                               RegisterController(context: context)
//                                   .handleEmailRegister();
//                             }),
//                           ]),
//                     )
//                   ]),
//             ),
//           )),
//         );
//       },
//     );
//   }
// }
