import 'package:flutter/material.dart';
import 'package:untitled/Screens/categories.dart';

final _loginFormKey = GlobalKey<FormState>();


class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SafeArea(
              bottom: true,
              left: true,
              right: true,
              top: true,
              child: Center(

                  child: Column(children: [
                Container(
                  width: 250,
                  height: 250,
                  margin: const EdgeInsets.all(50),
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: Image(
                        alignment: Alignment.topCenter,
                        image: AssetImage(
                          'images/quizzchannel-removebg-preview.png',
                        )),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    color: Colors.cyan,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Form(
                          key: _loginFormKey,
                          child: TextFormField(
                            validator: (value){
                              if (value!.isEmpty) {
                                return "Username must not be empty";
                              } else if (value.length < 9) {
                                return "Username must be more than 9 chracters";
                              } else if (!value[0].contains(RegExp(r'[A-Z]'))) {
                                return "First Character in userName must be Uppercase ";
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter your Username',
                              prefixIcon: const Icon(Icons.person_2_outlined),
                              labelText: 'Username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your Password',
                            prefixIcon: const Icon(Icons.lock_outline),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 10),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  'New to quiz?',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black45),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child:  Text(
                                    'Register?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                ),
                               ],
                            ),
                            
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 15,
                                  shadowColor: Colors.black,
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                if (_loginFormKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Categories()),
                                  );
                                }
                              },  child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 60),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),),
                            // ElevatedButton.styleFrom(
                            //   onPressed: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context) => const Categories()),
                            //     );
                            //   },
                            //     backgroundColor: Colors.black,
                            //     shape: MaterialStateProperty.all<
                            //         RoundedRectangleBorder>(
                            //       RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(20),
                            //       ),
                            //     ),
                            //
                            //   child: const Padding(
                            //     padding: EdgeInsets.symmetric(
                            //         vertical: 12, horizontal: 60),
                            //     child: Text(
                            //       'Login',
                            //       style: TextStyle(
                            //         fontSize: 18,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(height: 16),
                            const Icon(
                              Icons.fingerprint,
                              color: Colors.black,
                              size: 50,
                            ),
                            const Text('USE TOUCH ID',
                            style: TextStyle(
                              color: Colors.black26
                            ),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: false,
                                  onChanged: (value) {
                                    value = true;
                                  },
                                ),
                                const Text(
                                  'Remember me',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {},
                                  child:  Text(
                                    'Forgot password',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue[900],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]))),
        ));
  }
}
