import 'package:flutter/material.dart';
import 'package:koralive/stream_screen.dart';

// List of Channels with M3U URLs
final List<Map<String, String>> channels = [
  {'name': 'BBC News', 'url': 'https://goody-code.github.io/live/tv.html'},
  {
    'name': 'Al Jazeera',
    'url': 'https://iptv-org.github.io/iptv/countries/ae.m3u'
  },
  {'name': 'CNN', 'url': 'https://iptv-org.github.io/iptv/countries/us.m3u'},
  {'name': 'MTV', 'url': 'https://iptv-org.github.io/iptv/countries/us.m3u'},
  {
    'name': 'Sky News',
    'url': 'https://iptv-org.github.io/iptv/countries/gb.m3u'
  },
  // Add other channels here as needed
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Sports Streaming'),
      ),
      body: ListView.builder(
        itemCount: channels.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(channels[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StreamScreen(
                    streamUrl: channels[index]['url']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List events = [];
//
//   @override
//   void initState() {
//     super.initState();
//     fetchEvents();
//   }
//
//   fetchEvents() async {
//     final response =
//         await http.get(Uri.parse("https://goody-code.github.io/live/tv.html"));
//
//     if (response.statusCode == 200) {
//       setState(() {
//         events =
//             json.decode(response.body); // Assume this gives a list of events
//       });
//     } else {
//       throw Exception('Failed to load events');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Live Sports Streaming'),
//       ),
//       body: events.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: events.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(events[index]['name']),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => StreamScreen(
//                             streamUrl: events[index]['stream_url']),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//     );
//   }
// }
