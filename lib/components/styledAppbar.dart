import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

enum SampleItem { itemOne, itemTwo, itemThree }

class _CustomAppBarState extends State<CustomAppBar> {
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      leading: IconButton(
        icon: const Icon(Icons.grain),
        tooltip: 'Show Snackbar',
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        PopupMenuButton<SampleItem>(
          initialValue: selectedItem,
          onSelected: (SampleItem item) {
            setState(() {
              selectedItem = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemOne,
              child: Text('English'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemTwo,
              child: Text('Marathi'),
            ),
            const PopupMenuItem<SampleItem>(
              value: SampleItem.itemThree,
              child: Text('Hindi'),
            ),
          ],
        ),
      ],
    );
  }
}
