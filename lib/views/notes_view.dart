import 'package:flutter/material.dart';
import 'package:semsar/views/widgets/nodes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NodesViewBody(),
    );
  }
}
