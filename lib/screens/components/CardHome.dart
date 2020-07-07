import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  CardHome({Key key, this.tweetPicture, this.versiculo, this.referencia});

  final String tweetPicture;
  final String versiculo;
  final String referencia;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      // height: height * 0.05,
      child: Card(
        child: ListTile(
          onTap: () {
            print(referencia);
          },
          leading: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(tweetPicture),
                  // child: Image.network(
                  //     'https://pbs.twimg.com/profile_images/1257092222425673728/pY1JGZQT_400x400.jpg'),
                ),
              ],
            ),
          ),
          title: Padding(
            // height: height * .10,
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  // height: height * .10,
                  child: Text(versiculo),
                ),
              ],
            ),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              // Text('1 Coríntios 10:24'),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Text(referencia),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
