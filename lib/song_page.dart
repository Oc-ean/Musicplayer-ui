import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer_ui/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              // Back button and menu button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'P L A Y L I S T',
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(
                      child: Icon(Icons.menu),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 17,
              ),

              // cover art, artist name , song name
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        image: AssetImage('images/album.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dan D Kesh',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'New Smoke',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              isLiked = !isLiked;
                              setState(() {});
                            },
                            icon: Icon(
                              isLiked
                                  ? CupertinoIcons.heart_fill
                                  : CupertinoIcons.heart,
                              color: isLiked ? Colors.red : Colors.black,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),

              // start time,shuffle button, repeat button,end time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('2:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('3:46')
                ],
              ),
              const SizedBox(
                height: 19,
              ),

              // linear bar
              NewBox(
                child: LinearPercentIndicator(
                  lineHeight: 12,
                  percent: 0.5,
                  progressColor: Colors.blueGrey,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // a row of button , previous song, pause play , next song
              SizedBox(
                height: 60,
                child: Row(
                  children: const [
                    Expanded(
                      child: NewBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: NewBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NewBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
