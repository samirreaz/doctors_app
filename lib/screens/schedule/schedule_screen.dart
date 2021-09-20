import 'package:doctor/models/scchedule_model.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        backgroundColor: Colors.black38,
      ),
      body: ListView.builder(
        itemCount: scheduleList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image: AssetImage(scheduleList[index].imgUrl),
              ),
            ),
            title: Text(
              scheduleList[index].name,
              style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(scheduleList[index].phone),
            onTap: () {},
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(scheduleList[index].date),
                Text(scheduleList[index].time),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateNewPage()),
          );*/
        },
        child: Icon(
          Icons.playlist_add_rounded,
          size: 40,
        ),
      ),
    );
  }
}
