import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_state.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failed ${state.errmessage}');
              if (state is AddNotesSuccess) {
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                setState(() {});
                Navigator.pop(context);
              }
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16.0,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(child: const AddNoteForm()),
              ),
            );
          },
        ),
      ),
    );
  }
}
