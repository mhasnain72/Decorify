import 'package:flutter/material.dart';
import './categary.dart';
import './sectionsbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: "Decorify",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 111, 0),
                child: Text(
                  'Wallpaper',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 25,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {},
              ),
            ],
          ),
          leading: Builder(
            builder: (context) {
              return Row(children: [
                IconButton(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  icon: const Icon(
                    Icons.menu,
                    size: 25,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ]);
            },
          ),
        ),
        drawer: Drawer(
          width: 270,
          backgroundColor: const Color.fromARGB(255, 22, 21, 21),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  const Text(
                    'Decorify',
                    style: TextStyle(
                      color: Color.fromARGB(255, 253, 252, 252),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(
                          EdgeInsets.fromLTRB(15, 0, 15, 0),
                        ),
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.deepPurple,
                        )),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          color: Color.fromARGB(255, 248, 247, 247),
                          height: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.explore_outlined),
                    Text('   Explore  '),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.trending_up_outlined),
                    Text('   Trending  '),
                  ],
                ),
                onTap: () {},
              ),
              const Divider(
                height: 0,
                thickness: 2,
                color: Color.fromARGB(115, 82, 80, 80),
                indent: 0,
                endIndent: 0,
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.image),
                    Text('  Wallpaper  '),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.video_camera_back),
                    Text('  Video Wallpaper  '),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.volume_up),
                    Text(' Ringtone'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.notification_add),
                    Text('  Notification'),
                  ],
                ),
                onTap: () {},
              ),
              const Divider(
                height: 0,
                thickness: 2,
                color: Color.fromARGB(115, 82, 80, 80),
                indent: 0,
                endIndent: 0,
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.settings),
                    Text('  Setting'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.call),
                    Text('  Help'),
                  ],
                ),
                onTap: () {},
              ),
              const Divider(
                height: 0,
                thickness: 2,
                color: Color.fromARGB(115, 82, 80, 80),
                indent: 0,
                endIndent: 0,
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.rate_review),
                    Text('  Rate US'),
                  ],
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Row(
                  children: [
                    Icon(Icons.info),
                    Text('  Information'),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 3,
              ),
              //calling the cateogary section
              const Cards(),
              //calling the tabbar
              const Hassi(),

              const SizedBox(
                height: 3,
              ),
              // Down grid
              Container(
                padding: const EdgeInsets.all(10),
                height: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 300,
                      crossAxisSpacing: 15),
                  itemCount: 50,
                  itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 50,
                    color: const Color.fromARGB(255, 108, 201, 22),
                    child: Image.network(
                        fit: BoxFit.fill,
                        "https://i.pinimg.com/564x/5d/d4/63/5dd463b72c918a39dd5f2b4b3c9c8ca1.jpg"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
