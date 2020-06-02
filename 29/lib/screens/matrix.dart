import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class matrix extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new SearchList();
    //);
  }
}

class SearchList extends StatefulWidget {
  SearchList({ Key key }) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();

}

class _SearchListState extends State<SearchList>
{
  Widget appBarTitle = new Text("Ma trận", style: new TextStyle(color: Colors.white),);
  Icon actionIcon = new Icon(Icons.search, color: Colors.white,);
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching;
  String _searchText = "";

  _SearchListState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      }
      else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    init();

  }

  void init() {
    _list = List();
    _list.add("HÀM LƯỢNG GIÁC TRONG TAM GIÁC VUÔNG");
    _list.add("BẢNG LƯỢNG GIÁC");
    _list.add("CÔNG THỨC ĐỔI GÓC");
    _list.add("NHỮNG CÔNG THỨC CƠ BẢN");
    _list.add("CÔNG THỨC GÓC BỘI");
    _list.add("CÔNG THỨC HẠ BẬC");
    _list.add("CÔNG THỨC VỚI TAN(X/2)");
    _list.add("CÔNG THỨC TỔNG VÀ HIỆU");
    _list.add("CÔNG THỨC TỔNG THÀNH TÍCH");
    _list.add("CÔNG THỨC TÍCH THÀNH TỔNG");
    _list.add("CÔNG THỨC GÓC CHIA ĐÔI");
    _list.add("CÔNG THỨC GÓC TRONG TAM GIÁC");
    _list.add("QUAN HỆ GIỮA CẠNH VÀ GÓC TRONG TAM GIÁC");
    _list.add("LIÊN HỆ CÁC HÀM SỐ LƯỢNG GIÁC");

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: buildBar(context),
      body: Center(
        //child: _IsSearching ? _buildSearchList() : _buildList()
        child: ListView(
          children: <Widget>[
            new Image.asset(
              "img_data/img_mt/1.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/2.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/3.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/4.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/5.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/6.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/7.jpg",
              fit: BoxFit.fill,
            ),
            new Image.asset(
              "img_data/img_mt/8.jpg",
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),

    );
  }

  List<ChildItem> _buildList() {
    return _list.map((contact) => new ChildItem(contact)).toList();
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => new ChildItem(contact))
          .toList();
    }
    else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String  name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => new ChildItem(contact))
          .toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(
        centerTitle: false,
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(icon: actionIcon, onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = new Icon(Icons.close, color: Colors.white,);
                this.appBarTitle = new TextField(
                  controller: _searchQuery,
                  style: new TextStyle(
                    color: Colors.white,

                  ),
                  decoration: new InputDecoration(
                    //prefixIcon: new Icon(Icons.search, color: Colors.white),
                      hintText: "Nhập vào để tìm...",
                      hintStyle: new TextStyle(color: Colors.white)
                  ),
                );
                _handleSearchStart();
              }
              else {
                _handleSearchEnd();
              }
            });
          },),
        ]
    );
  }

  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = new Icon(Icons.search, color: Colors.white,);
      this.appBarTitle =
      new Text("Ma trận", style: new TextStyle(color: Colors.white),);
      _IsSearching = false;
      _searchQuery.clear();
    });
  }

}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: new Text(this.name));
  }

}
