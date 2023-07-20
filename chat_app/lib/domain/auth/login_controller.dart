// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class LoginController {
//   final BuildContext context;
//   LoginController({required this.context});

//   Future<void> handleLogin(String type) async {
//     try {
//       if (type == "email") {
//         // BlocProvider.of<LoginBloc>(context).state
//         final state = context.read<LoginBloc>().state;
//         String email = state.email;
//         String password = state.password;

//         if (email.isEmpty) {
//           toastInfo(msg: "email is required, please fill it");
//           return;
//         }
//         if (password.isEmpty) {
//           toastInfo(msg: "password is required, please fill it");
//           return;
//         }

//         try {
//           final credentials = await FirebaseAuth.instance
//               .signInWithEmailAndPassword(email: email, password: password);

//           // user not exist
//           if (credentials.user == null) {
//             toastInfo(msg: "you don't registered yet, pleae signUp first");
//             return;
//           }
//           // user email is wrong
//           if (!credentials.user!.emailVerified) {
//             toastInfo(msg: "you need to verify the email first");
//             return;
//           }
                  

//           var user = credentials.user;
//           if (user != null) {
            
//             // set the first time false, for the future
//             Global.storageService
//                 .setBool(AppConstants.DEVICE_FIRST_TIME, false);


//             // make him logged in and don't ask him to login again in the future
//             Global.storageService
//                 .setString(AppConstants.USER_TOKEN_KEY, "123456");




//             // always begin from the home page, if it is not
//             context.read<AppBloc>().add(ChangePageEvent(0));



//             GoRouter.of(context).go('/app_pages');
//             toastInfo(msg: "welcom to home");
//           } else {
//             toastInfo(msg: "user doesn't exist");
//             return;
//           }
//         } on FirebaseAuthException catch (e) {
//           if (e.code == "user-not-found") {
//             toastInfo(msg: "user not found for this email");
//             return;
//           } else if (e.code == "wrong-password") {
//             toastInfo(msg: "wrong password provided for that user");
//             return;
//           } else if (e.code == "invalid-email") {
//             toastInfo(msg: "email format is invalid");
//             return;
//           } else {
//             toastInfo(msg: "error occured, retry again");
//             return;
//           }
//         }
//       }
//     } catch (e) {}
//   }
// }
