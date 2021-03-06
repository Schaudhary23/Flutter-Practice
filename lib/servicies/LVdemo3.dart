import 'package:flutter/material.dart';
import 'package:flutter_training/servicies/speaker_service.dart';

class LVDemo3 extends StatelessWidget {
  LVDemo3({Key? key}) : super(key: key);
  final speakers = SpeakerService().getSpeakers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('C# Corner Annual Conference'),
        ),
        body: ListView.builder(
          itemCount: speakers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 20.0,
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(speakers[index].imageUrl),
                    ),
                    title: Text(speakers[index].topic),
                    subtitle: Text(speakers[index].speakerName),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {}),
              ),
            );
          },
        ));
  }
}
