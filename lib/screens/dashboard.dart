import 'package:flutter/material.dart';
import 'package:protestant_bot/api/Card.api.dart';
import 'package:protestant_bot/screens/components/CardHome.dart';
import 'package:protestant_bot/main.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

const PrimaryColor = const Color(0xff1da1f2);

class _DashboardPageState extends State<DashboardPage> {
  // var data = {};
  List data;

  @override
  void initState() {
    super.initState();

    // List t = getCardData() as List;

    // setState(() {
    //   data = await getCardData();
    // });

    // this.setState(() {
    //   data = t;
    // });

    print('data $data');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://logodownload.org/wp-content/uploads/2014/09/twitter-logo-1.png',
          color: Colors.white,
          width: 30,
        ),
        centerTitle: true,
        brightness: Brightness.dark,
        backgroundColor: PrimaryColor,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff657786),
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff1da1f2),
        ),
        padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return CardHome(
                tweetPicture:
                    'https://pbs.twimg.com/profile_images/1257092222425673728/pY1JGZQT_400x400.jpg',
                versiculo:
                    "Servi ao Senhor com alegria, apresentai-vos diante dele com cântico",
                referencia: "Romanos 2.12");
          },
        ),
        // child: FutureBuilder<List<Card>>(
        //   future: getCardData(),
        // )
      ),
    );
  }
}
