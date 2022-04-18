import 'package:flutter/material.dart';
import 'package:project/Modules/history.dart';
import 'package:project/shared/shared.component/components.dart';
import 'nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  List<Widget> Screens = [HomeScreen(), History()];
  int current = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        elevation: 2,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.format_list_bulleted_outlined),
            iconSize: 30,
            color: Colors.black,
          );
        }),
        // title: ListTile(
        //   leading: ClipRRect(
        //     borderRadius: BorderRadius.circular(25),
        //     child: const Image(
        //       image: AssetImage("assets/LLL.jpg"),
        //       width: 45,
        //       height: 45,
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   title: const Text(
        //     'Blaghaty',
        //     style: TextStyle(
        //         color: Colors.black,
        //         fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //         letterSpacing: 1.5),
        //   ),
        //   onTap: () {},
        // ),
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black, letterSpacing: 1.5),
        ),
        // backgroundColor: const Color(0xff0D47A1),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: const Image(
                      image: AssetImage("assets/LLL.jpg"),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'Blaghaty',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.5),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                      offset: Offset(1, 5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/64/57/ab/6457ab824bbd9983b24d52bf750fc2f9.jpg')),
                ),
                width: double.infinity,
                height: 240,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome To Blaghaty',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 1.2),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Make Your city clean',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 50),
                      OutlineButton(
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                          Navigator.of(context).pushNamed("report");
                        },
                        child: const Text("Take Photo and Send",
                            style: TextStyle(
                                fontSize: 15,
                                letterSpacing: 1.5,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/Back2.jpg",
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.support_agent),
        // backgroundColor: const Color(0xff0D47A1),
        backgroundColor: const Color(0xffffa726),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.grey[200],
      //   //لما بدوس علي الايكون بتفضل زي ماهيا
      //   type: BottomNavigationBarType.fixed,
      //   elevation: 30,
      //   currentIndex: current,
      //   onTap: (index) {
      //     setState(() {
      //       current = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //       ),
      //       label: 'home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.add_rounded,
      //       ),
      //       label: 'Report a Violation',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.history,
      //       ),
      //       label: 'History',
      //     ),
      //   ],
      // ),

      bottomNavigationBar: BottomAppBar(
        // color: const Color(0xff0D47A1),
        // color: Color(0xffF5F5F5),
        color: const Color(0xffffa726),
        //For circular border around the FAB
        elevation: 1,
        shape: const CircularNotchedRectangle(),
        //Row of Icons
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.home),

                onPressed: () {
                  Navigator.of(context).pushNamed("home");
                },

                // color: Colors.white,
              ),
              const Spacer(),
              Container(
                width: 60,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffffa726),
                ),
                child: deffaultButton(
                  TextColor: Colors.black,
                  text: '+',
                  function: () {
                    Navigator.of(context).pushNamed("report");
                  },
                  background: Colors.white,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {
                  Navigator.of(context).pushNamed("history");
                },
                // color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
