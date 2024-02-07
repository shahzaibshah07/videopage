import 'package:flutter/material.dart';
import 'package:secondproject/widgets/CustomBottomNavigation.dart';

class VideosPage extends StatefulWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  int _selectedIndex = 0;
  bool _isPlaying = false; // Initialize _isPlaying here
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
           icon : Icon(Icons.menu,size: 32,color: Colors.deepOrange,)),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Videos Page',
            style : TextStyle(color: Colors.deepOrange, fontSize: 24, fontStyle: FontStyle.italic)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10,),
              Container(
                height: 200,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/kaifi.jpg"),
                      fit: BoxFit.fill,
                    ),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isPlaying = !_isPlaying;
                    });
                  },
                  child: Center(
                    child: _isPlaying
                        ? Icon(Icons.pause, size: 50, color: Colors.white) // Placeholder for video playback
                        : Icon(Icons.play_arrow, size: 50, color: Colors.white), // Placeholder for video playback
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    Text(
                      'Kaifi Khalil - Jurmana [Official Music Video]',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('3,468,385 views  Premiered Jan 12, 2024  #9 on Trending for music'
                       ' Stream Jurmana on your favourite music platform: https://distrokid.com/hyperfollow/kai'


                        'Written, composed and produced by: Kaifi Khalil'
                        'Lyrics by: Kaifi Khalil and Ain Ray A.'
'                        Music by: Kaifi Khalil and Lil AK 100'
'                        Mixed by: Lil AK 100 and Kaifi Khalil'
'                        Mastered by: Lil AK 100'
                        'Twitter'

                       ' / kaifi_khalil'
                      '  Instagram:'

                        '/ kaifikhalilmusic'
                        'Facebook:'

                        '/ kaifikhalil'
                        'Tiktok:'

                        '/ kaifikhalil'

                        '#jurmana #kaifikhalil',
                    style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 10),
                    child: Icon(Icons.thumb_up_off_alt_rounded,size: 28, color: _selectedIndex == 0 ? Colors.red : Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 20),
                    child: Icon(Icons.thumb_down,size: 28, color:_selectedIndex == 1 ? Colors.lightGreenAccent : Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, left: 20),
                    child: Icon(Icons.comment,size: 28, color:_selectedIndex == 2 ? Colors.blue : Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, left: 20),
                    child: Icon(Icons.headphones_rounded,size: 28, color:_selectedIndex == 3 ? Colors.yellow : Colors.grey),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
