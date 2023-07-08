
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: NetworkImage(
        'https://1.bp.blogspot.com/-0rQjtzScML4/YGwcwgtpXnI/AAAAAAAAQHo/ijF1uMJJ_lInNnMqkLjaAfuo_k0el075wCLcBGAsYHQ/s0/910515.jpg'),
         fit: BoxFit.cover)),
    child:

      Scaffold(
          backgroundColor: Colors.transparent,

          //  appBar: AppBar(
      //   backgroundColor: Colors.white60,
      //   leading: const Icon(Icons.menu),
      //   title: const Text('Flutter', textAlign: TextAlign.center, style: TextStyle(color: Colors.black)),
      //   actions: const [
      //   IconButton(onPressed: notificationPressed,
      //       icon: Icon(
      //           Icons.notification_important
      //       )),
      //     IconButton(onPressed: search,
      //         icon:Icon (Icons.search)),
      //   ],
      // ),

        body: Center(

            child: SizedBox(
              height: 200,



            child:
            Column(children:  [
                  const Align(
                            alignment: Alignment.center,
                            child: Text('Now UI Flutter',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 40.0,
                                  fontStyle: FontStyle.normal,


                                )),
                          ),

                  const SizedBox(
                    height: 20,
                  ),
              const Text(
                "My name is",
                style: TextStyle(color: Colors.white54, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Tasneem",
              style: TextStyle(color: Colors.white54, fontSize: 30)),
              // SizedBox(
              //   height: 50,
              // ),
              ElevatedButton(
                  onPressed:(){
                    print('''Go to Log in''');
                  },
                  child: const Text("Get Start"))
                  ]),
                ),

            )
        ));


  }

  void notificationPressed() {
    print('NotificationPressed');
  }

  void search() {
    print('search pressed');
  }

}