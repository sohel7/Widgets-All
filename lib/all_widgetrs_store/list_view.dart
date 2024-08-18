import 'package:flutter/material.dart';

class CustomListViewWidget extends StatelessWidget {
  final List<String> items;
  final Axis scrollDirection;
  final bool reverse;
  final EdgeInsetsGeometry padding;
  final bool primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final double? itemExtent;
  final Widget? separator;

  const CustomListViewWidget({
    super.key,
    required this.items, // A list of items to display
    this.scrollDirection = Axis.vertical, // Direction of the ListView (vertical/horizontal)
    this.reverse = false, // Whether the ListView should reverse the order
    this.padding = const EdgeInsets.all(8.0), // Padding around the ListView
    this.primary = false, // Whether this is the primary scroll view
    this.physics = const BouncingScrollPhysics(), // Scroll physics like bouncing or clamping
    this.shrinkWrap = false, // Whether to shrink wrap the ListView
    this.itemExtent, // Fixed extent (height/width) for each item
    this.separator, // Optional separator widget between items
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: Text(
          'No items available',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    if (separator != null) {
      return ListView.separated(
        scrollDirection: scrollDirection,
        reverse: reverse,
        padding: padding,
        primary: primary,
        physics: physics,
        shrinkWrap: shrinkWrap,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        },
        separatorBuilder: (context, index) {
          return separator!;
        },
      );
    }

    return ListView.builder(
      scrollDirection: scrollDirection,
      reverse: reverse,
      padding: padding,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemCount: items.length,
      itemExtent: itemExtent,
      itemBuilder: (context, index) {
        return _buildListItem(context, index);
      },
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(items[index][0]), // Displaying the first letter of the item
        ),
        title: Text(items[index]), // Displaying the item
        subtitle: Text('Subtitle of ${items[index]}'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${items[index]} tapped!')),
          );
        },
      ),
    );
  }
}
