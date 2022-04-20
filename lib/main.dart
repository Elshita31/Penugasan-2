import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Tugas 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'My Music',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(title),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 0),
                child: Card(
                    margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
                    elevation: 2,
                    child: ListTile(
                      horizontalTitleGap: 16.0,
                      leading: Image.network(
                        "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/06/24/2693906705.jpg",
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Happier - Olivia Rodrigo",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      subtitle: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              FlatButton(height: 2, color: Colors.black, textColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), child: Text('More'), onPressed: () {})
                            ],
                          )),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 23.0,
                              color: Colors.red[400],
                            ),
                            onPressed: () {
                              //   _onDeleteItemPressed(index);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.delete_outline,
                              size: 23.0,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              //   _onDeleteItemPressed(index);
                            },
                          ),
                        ],
                      ),
                    )));
          }),
    );
  }
}
