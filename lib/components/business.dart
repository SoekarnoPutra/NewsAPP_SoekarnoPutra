// business.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:berita/components/berita.dart'; 
import '../providers/news.provider3.dart'; 

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  void initState() {
    super.initState();
   
    Provider.of<NewsProvider3>(context, listen: false).getBusinessNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Tentang Bisnis'), 
      ),
      body: Consumer<NewsProvider3>(
        builder: (BuildContext context, newsProvider, Widget? child) {
          return newsProvider.isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                physics: BouncingScrollPhysics(),
                  children: [
                    ...(newsProvider.resNews?.articles ?? []).map(
                      (e) => News1(
                        title: e.title ?? '',
                        image: e.urlToImage ?? '',
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
