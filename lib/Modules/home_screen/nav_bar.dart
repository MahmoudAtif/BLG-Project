import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage("assets/LLL.jpg"),
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            accountName: Text(
              'Mahmoud Atif',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            accountEmail: Text('example@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                )),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/64/57/ab/6457ab824bbd9983b24d52bf750fc2f9.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color(0xff0D47A1),
            ),
            title: const Text('My Account'),
            onTap: () {
              Navigator.of(context).pushNamed("profile");
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.language,
              color: Color(0xff0D47A1),
            ),
            title: const Text('Language'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.help,
              color: Color(0xff0D47A1),
            ),
            title: Text('help'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.login_rounded,
              color: Color(0xff0D47A1),
            ),
            title: const Text('Logout'),
            onTap: () {
              Navigator.of(context).pushNamed("signin");
            },
          ),
        ],
      ),
    );
  }
}
