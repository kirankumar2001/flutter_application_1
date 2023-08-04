import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/contact_model.dart';
import 'package:flutter_application_1/screens/detailspage.dart';

void main() {
  runApp(MaterialApp(
    routes: {'person': (context) => DetailsPage()},
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        body: ListView(
          children: contacts.map((persons) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(arguments: persons['id'], 'person');
                },
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(persons['image']),
                      // child: Icon(
                      //   Icons.account_circle_outlined,
                      //   color: Colors.black,
                      // ),
                      backgroundColor: Colors.white,
                    ),
                    title: Text(
                      persons['name'],
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("${persons['number']}"),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}
