import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Bg.dart';
import '../MyVariable.dart';
import '../model/ListItem.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  final int itemsPerPage = 10;
  int currentPage = 0;
  int? argsName;
  List<ListItem> allItems = [];
  List<ListItem> displayedItems = [];
  final ScrollController _scrollController = ScrollController();
  MyVariable myVariable = MyVariable();

  ViewType currentView = ViewType.list;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args = ModalRoute
        .of(context)
        ?.settings
        .arguments;

    if (args == null || args is! int) {
      print("is Null");
      return;
    }
    setState(() {
      argsName = int.parse(args.toString());
    });

    if (argsName == 1) {
      allItems.addAll(myVariable.ballItems);
    } else if (argsName == 2) {
      allItems.addAll(myVariable.armbandItems);
    }else if (argsName == 3) {
      allItems.addAll(myVariable.braceletItems);
    }else if (argsName == 4) {
      allItems.addAll(myVariable.glovesItems);
    }else if (argsName == 5) {
      allItems.addAll(myVariable.vestItems);
    } else {
      allItems = [
        ListItem(imagePath: 'assets/armband.png', text: '120', ballText: "А"),
        ListItem(imagePath: 'assets/armband.png', text: '100', ballText: "В"),
        ListItem(imagePath: 'assets/armband.png', text: '60', ballText: "Д"),
      ];
    }
    setState(() {
      displayedItems = allItems.take(itemsPerPage).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      loadMoreItems();
    }
  }

  void loadMoreItems() {
    setState(() {
      currentPage++;
      int startIndex = currentPage * itemsPerPage;
      int endIndex = startIndex + itemsPerPage;
      if (startIndex < allItems.length) {
        displayedItems.addAll(allItems.sublist(startIndex, endIndex > allItems.length ? allItems.length : endIndex));
      }
    });
  }


  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroudsImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            // title: const Text(
            //   'Ball Collection',
            //   style: TextStyle(color: Colors.white),
            // ),

            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.list_alt),
                onPressed: _sortListView,
                tooltip: 'Список',
              ),
              IconButton(
                icon: Icon(Icons.grid_view_rounded),
                onPressed: _sortGridView,
                tooltip: 'Сетка',
              ),

              IconButton(
                icon: Icon(Icons.upgrade),
                onPressed: _sortAscending,
                tooltip: 'Сортировать по возрастанию',
              ),
              IconButton(
                icon: Icon(Icons.vertical_align_bottom),
                onPressed: _sortDescending,
                tooltip: 'Сортировать по убыванию',
              ),
              IconButton(
                icon: Icon(Icons.sort_by_alpha),
                onPressed: _sortAlphabetically,
                tooltip: 'Сортировать по алфавиту',
              ),

            ],
            actionsIconTheme: IconThemeData(
              color: Colors.white,
              size: 30,
            ),
          ),
          body: buildView(),
        ),
      ],
    );
  }

  void _sortAscending() {
    setState(() {
      displayedItems.sort((a, b) => int.parse(a.text).compareTo(int.parse(b.text)));
    });
  }

  void _sortDescending() {
    setState(() {
      displayedItems.sort((a, b) => int.parse(b.text).compareTo(int.parse(a.text)));
    });
  }

  void _sortAlphabetically() {
    setState(() {
      displayedItems.sort((a, b) => a.ballText.compareTo(b.ballText));
    });
  }

  void _sortListView() {
    setState(() {
      currentView = ViewType.list;
    });
  }

  void _sortGridView() {
    setState(() {
      currentView = ViewType.grid;
    });
  }


  Widget buildView() {
    return currentView == ViewType.list ? buildListView() : buildGridView();
  }


  Widget buildListView() {
    return ListView.builder(
      itemCount: displayedItems.length,
      controller: _scrollController,
      itemBuilder: (context, index) {
        ListItem item = displayedItems[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListTile(
            title: Text(
              item.text,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              item.ballText,
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/infoBallView', arguments: item);
            },
          ),
        );
      },
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      itemCount: displayedItems.length,
      controller: _scrollController,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        ListItem item = displayedItems[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/infoBallView', arguments: item);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(item.imagePath),
                  width: 100,
                  height: 100,
                ),
                Text(
                  item.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.ballText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

  enum ViewType { list, grid }
