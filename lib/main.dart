import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Hello',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            )),
        debugShowCheckedModeBanner: false,
        home: DashboardPage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class DashboardPage extends StatelessWidget {
  final purpleColor = Color(0xff6688FF);
  final darkTextColor = Color(0xff1F1A3D);
  final lightTextColor = Color(0xff999999);
  final textFieldColor = Color(0xff00004D);
  final borderColor = Color(0xffC6C6C6);
  final forgotPasswordTextColor = Color(0xffFB344F);
  final buttonColor = Color(0xff351A96);
  final buttonTextColor = Color(0xff242A31);
  final bottomTextColor = Color(0xff999EA1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100.h,
                      width: 170.w,
                      child: Image.asset('assets/images/log.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Hi, Wecome Back! 👋',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Hello again, you’ve been missed!',
                  style: TextStyle(
                      color: lightTextColor, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Email',
                  style: TextStyle(
                      color: textFieldColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: buttonColor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey, width: 0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey, width: 0),
                    ),
                    filled: false,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    fillColor: textFieldColor,
                    hintText: "Please enter email",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      color: textFieldColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: buttonColor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey, width: 0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey, width: 0),
                    ),
                    filled: false,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    fillColor: textFieldColor,
                    hintText: "Please enter your Password",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: forgotPasswordTextColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 12.h),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 2.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Or With',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Divider(thickness: 2.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40.h,
                        child: TextButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: borderColor),
                              ),
                              textStyle: MaterialStateProperty.all(
                                TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20.h,
                                width: 20.w,
                                child: Image.asset('assets/images/github.png'),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'GitHub',
                                style: TextStyle(color: buttonTextColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40.h,
                        child: TextButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              BorderSide(color: borderColor),
                            ),
                            textStyle: MaterialStateProperty.all(
                              TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20.h,
                                width: 20.w,
                                child: Image.asset('assets/images/gitlab.png'),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'GitLab',
                                style: TextStyle(color: buttonTextColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          'Don’t have an account ? ',
                          style: TextStyle(
                              color: bottomTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Signup',
                          style: TextStyle(
                              color: textFieldColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
