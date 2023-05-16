import 'package:flutter/material.dart';
import 'package:task/controller/data/remote/api.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
        body: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot Snapshot) {
              if (Snapshot.hasData) {
                return ListView.builder(
                    itemCount: Snapshot.data.Length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(Snapshot.data[index]['images']),
                        title: Text(
                          Snapshot.data[index]['title'],
                        ),
                        subtitle: Text(
                          Snapshot.data[index]['description'],
                        ),
                        trailing: Text(Snapshot.data[index]['price'].toString()),
                      );
                    });
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
