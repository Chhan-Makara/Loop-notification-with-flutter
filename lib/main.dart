import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  List<Map<String, dynamic>> notifications = [
    {
      'profile':
          "https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg",
      'title': "Chhan Makara followed you",
      'subTitle': "3 hours ago",
      'icon': Icons.person,
    },
    {
      'profile':
          "https://static-cse.canva.com/blob/1853793/1600w-B-cRyoh7b98.jpg",
      'title': "Sokha Angkor liked your photo",
      'subTitle': "5 hours ago",
      'icon': Icons.favorite,
    },
    {
      'profile':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWwyTJ5Yu4r38_RelllmuvxUHrOlqNC4mtRXCZrFYJPSbrLAcQ8c6uN149TYOykOm6ntc&usqp=CAU",
      'title': "Mr. Black White commented on your photo",
      'subTitle': "15 minutes ago",
      'icon': Icons.feedback,
    },
    {
      'profile':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlgczxqjIeVQuIXqnd_EPHE8XkY8KYSE9sNexcM3Ah1iOI_Dwne04a9CwQtYhozJaFUjM&usqp=CAU",
      'title': "Mr. Hakce liked your photo",
      'subTitle': "2 hours ago",
      'icon': Icons.favorite,
    },
    {
      'profile':
          "https://www.perfocal.com/blog/content/images/size/w960/2021/01/Perfocal_17-11-2019_TYWFAQ_100_standard-3.jpg",
      'title': "Chhan Makara followed you",
      'subTitle': "3 hours ago",
      'icon': Icons.person,
    },
    {
      'profile':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQymFai16gWukhojmoju2-02KER9N8NUqoXS44SCZCJ_-0iS3UHEX1QXDES0qn_3NYzGHo&usqp=CAU",
      'title': "Sophea chany followed you",
      'subTitle': "1 hour ago",
      'icon': Icons.person,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: const Text(
          "Notification",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(notification[
                                  'profile']), // ✅ Uses profile image from list
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(notification['icon'],
                                  size: 16, color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notification['title'],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              notification['subTitle'],
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Text("See all recent activity")
        ],
      ),
    );
  }
}
