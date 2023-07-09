import 'package:flutter/material.dart';
class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                    color: Colors.orangeAccent,
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
                        TextFormField(
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
                        const SizedBox(height: 30),
                        TextFormField(
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
                                  child: const Text(
                                    'Register?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(builder: (context) => const HomeScreen1()),
                                  (route) => false,
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 60),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Icon(
                              Icons.fingerprint,
                              color: Colors.blue,
                              size: 50,
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
                                  child: const Text(
                                    'Forgot password',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
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
