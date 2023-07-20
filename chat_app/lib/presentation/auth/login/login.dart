// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     if (Global.storageService.getIsLoggedIn() == true) {
//       print("already logged in");
//       return AppPage();
//     } else {
//       return BlocBuilder<LoginBloc, LoginState>(
//         builder: (context, state) {
//           return Container(
//             color: Colors.white,
//             child: SafeArea(
//                 child: Scaffold(
//               backgroundColor: Colors.white,
//               appBar: authAppbar("Log in"),
//               body: SingleChildScrollView(
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       thirdPartyLogin(context),
//                       Center(
//                           child:
//                               textWidget("Or use your email account to login")),
//                       Container(
//                         margin: EdgeInsets.only(top: 36.h),
//                         padding: EdgeInsets.only(left: 25.w, right: 25.w),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               textWidget("Email"),
//                               inputField(
//                                   'enter your email adderss', 'email', "user",
//                                   (value) {
//                                 context
//                                     .read<LoginBloc>()
//                                     .add(EmailEvent(value));
//                               }),
//                               textWidget("password"),
//                               inputField(
//                                   'enter your password', 'password', "lock",
//                                   (value) {
//                                 context
//                                     .read<LoginBloc>()
//                                     .add(PasswordEvent(value));
//                               }),
//                               forgetPassword(),
//                               SizedBox(height: 70.h,),
//                               footerButton('login', () {
//                                 LoginController(context: context)
//                                     .handleLogin("email");
//                               }),
//                               footerButton('register', () {
//                                 GoRouter.of(context).push('/signup');
//                               }),
//                             ]),
//                       )
//                     ]),
//               ),
//             )),
//           );
//         },
//       );
//     }
//   }
// }
