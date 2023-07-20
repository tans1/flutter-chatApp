// import 'package:flutter/widgets.dart';
// import 'package:go_router/go_router.dart';

// class RegisterController {
//   final BuildContext context;

//   RegisterController({required this.context});

//   Future<void> handleEmailRegister() async {
//     final state = context.read<RegisterBloc>().state;
//     String email = state.email;
//     String userName = state.userName;
//     String password = state.password;
//     String rePassword = state.rePassword;

//     if (email.isEmpty) {
//       toastInfo(msg: "email is required, please fill it");
//       return;
//     }
//     if (userName.isEmpty) {
//       toastInfo(msg: "userName is required, please fill it");
//       return;
//     }
//     if (password.isEmpty) {
//       toastInfo(msg: "password is required, please fill it");
//       return;
//     }
//     if (rePassword.isEmpty) {
//       toastInfo(msg: "please confirm your password");
//       return;
//     }

//     if (password != rePassword) {
//       toastInfo(msg: "password doesn't match");
//       return;
//     }

//     try {
//       final credentials = await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(email: email, password: password);
//       if (credentials.user != null) {
//         await credentials.user?.sendEmailVerification();
//         await credentials.user?.updateDisplayName(userName);
//         toastInfo(msg: "please verify your email");
//         GoRouter.of(context).go('/login');
//       } else {
//         toastInfo(msg: "error occured,try again please");
//         return;
//       }
//     } on FirebaseAuthException catch (e) {
//       if (e.code == "weak-password") {
//         toastInfo(msg: "password is too weak");
//         return;
//       } else if (e.code == "email-already-in-use") {
//         toastInfo(msg: "email is already in use");
//         return;
//       } else if (e.code == "invalid-email") {
//         toastInfo(msg: "email format is invalid");
//         return;
//       }
//     }
//   }
// }
