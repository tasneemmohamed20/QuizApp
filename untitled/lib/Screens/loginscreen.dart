import 'package:flutter/material.dart';
// import 'package:flutter/src/services/asset_manifest.dart' show AssetManifest;
class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: NetworkImage('https://i.pinimg.com/736x/a6/96/ee/a696ee973c843a22fd88b3c9560d039b.jpg'),
        fit: BoxFit.cover )),
      child: Scaffold(
        backgroundColor: Colors.white,

        body: SingleChildScrollView(

          child: SafeArea(
            bottom: true,
            left: true,
            right: true,
            top: true,

            child: Center(

              child: Column(

                children: [
                  // SizedBox(
                  //   height: 25, ),
                  Container(

                    width: 200,
                    height: 200,
                  margin: const EdgeInsets.all(80),

                    child: const Image(image: NetworkImage('https://i.pinimg.com/736x/a6/96/ee/a696ee973c843a22fd88b3c9560d039b.jpg',


                )),



                    ),

              Container(

    width: double.infinity,
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
    mainAxisSize: MainAxisSize.min,
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
              const Text('New to quiz?', style: TextStyle(
                fontSize: 16,
                color: Colors.black45
              ),),
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
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.black),
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
                  style:TextStyle(
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
        )));}}