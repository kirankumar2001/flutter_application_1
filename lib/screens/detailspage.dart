import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/contact_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final contactid = ModalRoute.of(context)?.settings.arguments;
    final contactList =
        contacts.firstWhere((element) => element["id"] == contactid);
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black12,
              image: DecorationImage(
                  image: NetworkImage(contactList['image']), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              contactList['name'],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "${contactList['number']}",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListTile(
              title: Text(
                contactList['lastcall2'],
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_outward),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListTile(
              title: Text(
                contactList['lastcall2'],
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_outward),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: ListTile(
              title: Text(
                contactList['lastcall2'],
                style: TextStyle(fontSize: 15),
              ),
              trailing: Icon(Icons.arrow_outward),
            ),
          ),
        ],
      ),
    );
  }
}
