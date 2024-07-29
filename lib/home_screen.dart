import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(child: Text('Calls', style: TextStyle(color: Colors.white))),
          ]),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.add_circle, color: Colors.white),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(value: '1', child: Text('New Group')),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          prefixIcon: const Icon(Icons.search),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade200))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200),
                      child: const Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/luffy.jpg'),
                            ),
                            title: Text('Monkey D luffy'),
                            subtitle: Text('Joy Boy'),
                            trailing: Icon(Icons.qr_code),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('Avatar'),
                            trailing: Icon(Icons.arrow_circle_right),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 280,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.favorite_border_outlined),
                            title: Text('Favourites'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.speaker_phone_rounded),
                            title: Text('Broadcast Lists'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.star_border_outlined),
                            title: Text('Starred Messages'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.laptop_chromebook_outlined),
                            title: Text('Linked Devices'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.key),
                            title: Text('Accounts'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.lock),
                            title: Text('Privacy'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.message),
                            title: Text('Chats'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.notifications_active),
                            title: Text('Notifications'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.compare_arrows_sharp),
                            title: Text('Storage and Data'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200),
                      child: const Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.info_rounded),
                            title: Text('Help'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('Tell a Friend'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text(
                      'Also from Meta',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200),
                      child: const Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.facebook_rounded),
                            title: Text('Open Facebook'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Image(
                                image: AssetImage('assets/Instagram2.png')),
                            title: Text('Open Instagram'),
                            trailing: Icon(Icons.arrow_circle_right_outlined),
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .5,
                          ),
                          ListTile(
                            leading: Icon(Icons.logout),
                            title: Text('Logout'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/Shanks.jpeg'),
                    ),
                    title: Text('Shanks'),
                    subtitle: Text('Where is Blackbeard?'),
                    trailing: Text('12:57 AM'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/Shanks.jpeg'),
                      ),
                    ),
                    title: const Text('Shanks'),
                    subtitle: const Text('20 mins ago'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/Shanks.jpeg'),
                    ),
                    title: const Text('Shanks'),
                    subtitle: Text(index / 2 == 0 ? 'Outgoing' : 'Incoming'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
