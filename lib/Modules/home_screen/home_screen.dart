import 'package:flutter/material.dart';
import 'package:project/Modules/history.dart';
import 'package:project/Modules/imageview.dart';
import 'package:project/shared/shared.component/components.dart';
import 'nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int current = 0;
  var selectedIndex = 0;
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
              const SizedBox(height: 10),
              SizedBox(
                height: 230,
                width: double.infinity,
                child: PageView.builder(
                    onPageChanged: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    controller: PageController(viewportFraction: 1),
                    itemCount: appBannerList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(appBannerList[index].url),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      appBannerList.length,
                      (index) => Indicator(
                          isActive: selectedIndex == index ? true : false))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //////////////////////////////////////////////
              Container(
                width: double.infinity,
                height: 240,
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
                      image: AssetImage("assets/Services.png")),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.5),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffffa726),
                        ),
                        // ignore: deprecated_member_use
                        child: MaterialButton(
                          padding: const EdgeInsets.all(15),
                          onPressed: () {
                            Navigator.of(context).pushNamed("report");
                          },
                          child: const Text("Learn More",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.support_agent),
        backgroundColor: const Color(0xffffa726),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xffffa726),

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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
