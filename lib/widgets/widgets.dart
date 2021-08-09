import 'package:dynamic_listview_physics/models/item_counter.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final int i;
  const ItemWidget(this.i);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      color: Colors.blueGrey,
      child: Center(
        child: Text(
          '${i + 1}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class FloatingButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemProvider =
        Provider.of<ItemCounterProvider>(context, listen: false);
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * .04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () => itemProvider.decrement(),
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () => itemProvider.increment(),
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ItemCounterProvider>(
      builder: (context, item, child) => ListView.separated(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * .02),
        physics: (item.itemCount < 3) ? NeverScrollableScrollPhysics() : null,
        separatorBuilder: (BuildContext context, int i) => ItemDivider(),
        itemBuilder: (BuildContext context, int i) => ItemWidget(i),
        itemCount: item.itemCount,
      ),
    );
  }
}

class ItemDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: MediaQuery.of(context).size.height * .01,
    );
  }
}
