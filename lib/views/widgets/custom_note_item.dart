import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: Color(0xffffd97e),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                child: Text(
                  'build your career with m ahmed',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 33, 31, 31),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(
                'may 21 , 2022',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
