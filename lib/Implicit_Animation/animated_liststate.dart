import 'package:flutter/material.dart';

class AnimatedListStateExample extends StatefulWidget {
  const AnimatedListStateExample({super.key});

  @override
  State<AnimatedListStateExample> createState() =>
      _AnimatedListStateExampleState();
}

class _AnimatedListStateExampleState extends State<AnimatedListStateExample> {
  final List items = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation List state'),
        centerTitle: true,
      ),
      body: AnimatedList(
          controller: _scrollController,
          key: _listKey,
          itemBuilder: ((context, index, animation) {
            return SlideTransition(
              position: animation.drive(Tween<Offset>(
                  begin: const Offset(1, 0), end: const Offset(0, 0))),
              child: AnimatedListItem(
                text: items[index],
                onpressed: () {
                  deleteItem(index);
                },
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: addItem,
        child: const Icon(Icons.add),
      ),
    );
  }

  void addItem() {
    dynamic index = items.length;
    items.add('item ${index + 1}');
    _listKey.currentState!.insertItem(index);
    Future.delayed(const Duration(milliseconds: 300), () {
      _scrollController.animateTo(_scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.bounceInOut);
    });
  }

  void deleteItem(int index) {
    var itemValue = items.removeAt(index);
    _listKey.currentState!.removeItem(index, (context, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: AnimatedListItem(
          text: itemValue,
        ),
      );
    });
  }
}

class AnimatedListItem extends StatelessWidget {
  const AnimatedListItem({super.key, required this.text, this.onpressed});
  final String text;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: ListTile(
        title: Text(text),
        trailing:
            IconButton(onPressed: onpressed, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
